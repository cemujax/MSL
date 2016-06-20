package controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.card.CardService;
import model.card.CardVO;
import model.member.MemberVO;
import model.photobook.PhotoBookVO;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import util.AccessId;

import com.twilio.sdk.Twilio;
import com.twilio.sdk.type.PhoneNumber;
import com.twilio.sdk.resource.api.v2010.account.Message;
import com.twilio.sdk.creator.api.v2010.account.MessageCreator;

public class CardController extends MultiActionController {

	private CardService cardService;
	private String path;

	public void setCardService(CardService cardService) {
		this.cardService = cardService;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public ModelAndView createCard(HttpServletRequest request,
			HttpServletResponse response, HttpSession session, CardVO cvo)
			throws Exception {
		System.out.println("createCard 컨트롤러");

		// 청첩장 info
		String url = cvo.getUrl();
		String cardDate = cvo.getCardDate();
		String hour = request.getParameter("hour");
		String min = request.getParameter("min");
		String ampm = request.getParameter("ampm");
		String groomName = request.getParameter("groomName");
		String groomTel = request.getParameter("groomTel");
		String brideName = request.getParameter("brideName");
		String brideTel = request.getParameter("brideTel");
		String cardContext = request.getParameter("cardContext");
		
		// member 정보 set
		MemberVO rvo = (MemberVO) session.getAttribute("mvo");
		cvo.setMemberVO(rvo);

		// 예식날짜
		if(ampm.equals("PM")){//오후 시 처리
			int hour_int = Integer.parseInt(hour);
			hour = String.valueOf(hour_int+12);
		}

		cardDate += " " + hour;
		cardDate += " " + min;
		System.out.println("date setting후::" + cardDate);
		cvo.setCardDate(cardDate);
		
		// 신랑 신부 정보
		cvo.setGroomInfo( groomName+ "`"
				+groomTel );
		cvo.setBrideInfo(brideName + "`"
				+ brideTel);

		// photobook도 setter로 넣읍시다
		if(request.getParameter("photoBookNo") != null && request.getParameter("photoBookNo") != ""){
			PhotoBookVO pvo = new PhotoBookVO();
			pvo.setBookNo(Integer.parseInt(request.getParameter("photoBookNo")));
			cvo.setPhotobookVO(pvo);
		}
		cardService.createCard(cvo);

		// 생성한 초대장 url
		File file = new File(path + cvo.getUrl() + ".jsp");
		File file_guestBook = new File(path +"/"+ cvo.getUrl()+"/guestBook.jsp");
		
		if (!file.getParentFile().exists())
			file.getParentFile().mkdirs();
		
		if (!file_guestBook.getParentFile().exists())
			file_guestBook.getParentFile().mkdirs();
		
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter( 
				new FileOutputStream(file),"UTF-8")); 
		BufferedWriter bw_guestBook = new BufferedWriter(new OutputStreamWriter( 
				new FileOutputStream(file_guestBook),"UTF-8"));
		
		try {
			
			String format = "<%@ page language='java' contentType='text/html; charset=UTF-8'\n"
    +"pageEncoding='UTF-8' isELIgnored='false'%><%@ taglib prefix='c'\n uri='http://java.sun.com/jsp/jstl/core'%>\n"
    +"<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>"
    +"<!DOCTYPE html>\n<html>\n<head>\n<meta charset='UTF-8'>\n<title>Insert title here</title></head>\n<body>\n";
			
			bw.write(format);
			bw.write("<jsp:include page='basicSkin.jsp' flush='true'>\n");
			
			String[] onlyDate = cardDate.split(" "); //년월일만
			//여기에 정보들 추가하면 됨됨
			bw.write("<jsp:param value='"+groomName+"' name='groomName'/>\n"
					+ "<jsp:param value='"+groomTel+"' name='groomTel'/>\n"
					+ "<jsp:param value='"+brideName+"' name='brideName'/>\n"
					+ "<jsp:param value='"+brideTel+"' name='brideTel'/>\n"
					+ "<jsp:param value='"+cardContext+"' name='cardContext'/>\n"
					+ "<jsp:param value='"+onlyDate[0] +"' name='cardDate'/>\n"
					+ "<jsp:param value='"+hour+"' name='hour'/>\n"
					+ "<jsp:param value='"+min+"' name='min'/>\n"
					+ "<jsp:param value='"+ampm+"' name='ampm'/>\n"
					+ "<jsp:param value='"+request.getParameter("dDay")+"' name='dDay'/>\n"
					+ "<jsp:param value='"+cvo.getHallName()+"' name='hallName'/>\n"
					+ "<jsp:param value='"+cvo.getHallLocation()+"' name='hallLocation'/>\n"
					+ "<jsp:param value='"+request.getParameter("photoBookNo")+"' name='photoBookNo'/>\n"
					+ "<jsp:param value='"+request.getParameter("photoBookImg")+"' name='photoBookImg'/>\n"
					+ "<jsp:param value='"+request.getParameter("photoBookComment")+"' name='photoBookComment'/>\n"
					+ "<jsp:param value='"+rvo.getMemberId()+"' name='memberId'/>\n"
					+"</jsp:include>\n");
			
			bw.write("</body>\n</html>\n");//닫는 태그
			
			
			// =====================방명록=======================
			
			bw_guestBook.write(format);
			bw_guestBook.write("<jsp:include page='../guestBookSample.jsp' flush='true'>\n");
			bw_guestBook.write("</jsp:include>\n");
			bw_guestBook.write("</body>\n</html>\n");//닫는 태그
			
			bw_guestBook.close();
			bw.close();

		} catch (IOException e) {
			e.printStackTrace();
		}

		return new ModelAndView("redirect:/card.do?command=getAllCards");
	}
	
	/////////////////////////////////////////////////////////////////
	public ModelAndView getAllCards(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("getAllCards 컨트롤러");
		MemberVO rvo = (MemberVO) request.getSession().getAttribute("mvo");

		if (rvo != null) {
			System.out.println("memberId::" + rvo.getMemberId());
			List<CardVO> cardList = cardService.getAllCards(rvo.getMemberId());
			System.out.println("card목록::" + cardList);
			return new ModelAndView("weddingCard/cardList", "cardList", cardList);
		} else {
			return new ModelAndView("loginregister");
		}
	}

	public ModelAndView getCard(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("getCard 컨트롤러");

		String url = request.getParameter("url");
		System.out.println("url 값 :: " + url);
		CardVO rvo = (CardVO) cardService.getCard(url);
		System.out.println(rvo);
		request.setAttribute("cvo", rvo);
		System.out.println("cvo set!!!!!!!!!!!!!!!!!");
		return new ModelAndView("url/" + url);
	}

	public ModelAndView urlCheck(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		boolean flag = false;
		System.out.println("urlCheck 컨트롤러");
		String url = request.getParameter("url");
		System.out.println(url);

		flag = cardService.urlCheck(url);
		System.out.println(flag);

		request.setAttribute("flag", flag);
		System.out.println("flag 값 넘김");
		return new ModelAndView("JsonView", "flag", flag);

	}

	public ModelAndView serachHallLocation(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("serachHallLocation controll");

		return new ModelAndView("JsonView", "hallLocation",
				request.getParameter("hallLocation"));
	}
	
	/////////////////////// sendUrl //////////////////
	public ModelAndView sendUrl(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("sendUrl controll");

		String ACCOUNT_SID = AccessId.ACCOUNT_SID;
		String AUTH_TOKEN = AccessId.AUTH_TOKEN;
		
		String url = request.getParameter("url");
		MemberVO rvo = (MemberVO) request.getSession().getAttribute("mvo");
		//폰번호 10~~~ 형식으로
		String phoneNumber = rvo.getPhoneNumber();
		phoneNumber = phoneNumber.trim(); phoneNumber = phoneNumber.substring(1);
		
		String msg =
				rvo.getName()+"님, 초대장 URL : "
		+"http://localhost:8888/Final_WeddingCard_2th/url/"+url+"jsp"; //주소 나중에
		
		Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
		
		Message message = new MessageCreator(
				ACCOUNT_SID, 
				new PhoneNumber("+82"+phoneNumber), // TO number
				new PhoneNumber("+13105043223"), // From Twilio number
				msg).execute();
		
		return new ModelAndView("JsonView");
	}
	
	public ModelAndView deleteCard(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("deleteCard controll");
		String cardNo = request.getParameter("cardNo");
		cardNo.trim();
		String[] cardNos = cardNo.split(" ");
		
		for(String c : cardNos){
			cardService.deleteCard(Integer.parseInt(c));
		}
		return new ModelAndView("redirect:/card.do?command=getAllCards");
	}
	
}