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
import model.card.CardcommentVO;
import model.member.MemberVO;
import model.photobook.PhotoBookVO;
import model.post.ReviewCommentVO;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
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
		System.out.println("cvo::"+cvo);
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

		cardDate += " " + hour; cardDate += " " + min;
		cvo.setCardDate(cardDate);
		
		// 신랑 신부 정보
		cvo.setGroomInfo( groomName+ "`"
				+groomTel );
		cvo.setBrideInfo(brideName + "`"
				+ brideTel);
		System.out.println("photoNo:::"+request.getParameter("photoBookImg"));
		// photobook도 setter로 넣읍시다
		if(request.getParameter("photoBookImg") != null && request.getParameter("photoBookImg") != ""){
			PhotoBookVO pvo = new PhotoBookVO();
			pvo.setBookNo(Integer.parseInt(request.getParameter("photoBookNo")));
			cvo.setPhotobookVO(pvo);
		}
		
		String format = "<%@ page language='java' contentType='text/html; charset=UTF-8'\n"
			    +"pageEncoding='UTF-8' isELIgnored='false'%><%@ taglib prefix='c'\n uri='http://java.sun.com/jsp/jstl/core'%>\n"
			    +"<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>"
			    +"<!DOCTYPE html>\n<html>\n<head>\n<meta charset='UTF-8'>\n<title>Insert title here</title></head>\n<body>\n";
		
		// 상단 이미지
		MultipartFile imgFile = cvo.getImgFile();
		File file = new File(path + cvo.getUrl() + ".jsp");
		File file_guestBook = new File(path +"/"+ cvo.getUrl()+"/guestBook.jsp");
		
		if(imgFile.getOriginalFilename() != null && imgFile.getOriginalFilename() !=""){//상단이미지 업로드 한경우
			System.out.println("mainImage Src::"+ imgFile.getOriginalFilename());
			
			File tempFile = new File(path + "temp_"+rvo.getMemberId()+"//"+imgFile.getOriginalFilename());
			File urlFile = new File(path + cvo.getUrl()+"//"+imgFile.getOriginalFilename());
			
			// 상단 이미지 업로드시 만들었던 temp 폴더의 이름을 url로 변경
			if (tempFile.getParentFile().isDirectory()){
				tempFile.getParentFile().renameTo(urlFile.getParentFile());
			}
			cvo.setMainImage(imgFile.getOriginalFilename());	
		}
		
		if (!file.getParentFile().exists())
			file.getParentFile().mkdirs();
		
		if (!file_guestBook.getParentFile().exists())
			file_guestBook.getParentFile().mkdirs();
		
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter( 
				new FileOutputStream(file),"UTF-8")); 
		BufferedWriter bw_guestBook = new BufferedWriter(new OutputStreamWriter( 
				new FileOutputStream(file_guestBook),"UTF-8"));
		
		try {
			
			String template = request.getParameter("template");
			bw.write(format);
			bw.write("<jsp:include page='template/"+template+".jsp' flush='true'>\n");
			
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
					+ "<jsp:param value='"+cvo.getUrl()+"' name='url'/>\n"
					+ "<jsp:param value='"+cvo.getMainImage()+"' name='imgSrc'/>\n"
					);
			//상단 이미지 있는 
			
			// jsp 닫음
			bw.write("</jsp:include>\n</body>\n</html>\n");
			
			
			// =====================방명록=======================
			
			bw_guestBook.write(format);
			bw_guestBook.write("<jsp:include page='template/guestBookSample.jsp' flush='true'>\n");
			bw_guestBook.write("<jsp:param value='"+cvo.getCardNo()+"' name='cardNo'/>\n"
					+"</jsp:include>\n");
			bw_guestBook.write("</body>\n</html>\n");//닫는 태그
			
			bw_guestBook.close();
			bw.close();

		} catch (IOException e) {
			e.printStackTrace();
		}
		
		cardService.createCard(cvo);


		return new ModelAndView("redirect:/card.do?command=getAllCards");
	}
	
	public ModelAndView uploadImage(HttpServletRequest request,
			HttpServletResponse response,HttpSession session, CardVO cvo) throws Exception {

		System.out.println("uploadImage controll");
		
		System.out.println(cvo);
		MultipartFile imgFile = cvo.getImgFile();  
		
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");
		
		//  ::: url/temp_회원ID/이미지.jpg  형식
		File file = new File(path + "temp_"+mvo.getMemberId()+"//"+imgFile.getOriginalFilename());
		
		if (!file.getParentFile().exists())// 이미지 저장할 temp 디렉토리 만듬
			file.getParentFile().mkdirs();
		
		// destFile Path에다가 파일 업로드 시킴
		File destFile = new File(file.getPath());
		imgFile.transferTo(destFile);
		
		return new ModelAndView("JsonView","result",imgFile.getOriginalFilename());
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
			return new ModelAndView("login/loginregister");
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
		String url = request.getParameter("url");
		cardNo.trim(); url.trim();
		String[] cardNos = cardNo.split(" ");
		String[] urls = url.split(" ");
		
		for(int i=0; i< urls.length; i++){
			//guestBook 삭제
			File file_guestBook = new File(path +urls[i]+"/guestBook.jsp");
			System.out.println("파일삭제:"+file_guestBook.delete());
			if(file_guestBook.getParentFile().isDirectory())
				System.out.println("dir삭제:"+file_guestBook.getParentFile().delete());
			
			// url 삭제
			File file_url = new File(path +urls[i]+".jsp");
			System.out.println(file_url.delete());
			
			cardService.deleteCard(Integer.parseInt(cardNos[i])); // db에서 삭제
		}
		return new ModelAndView("redirect:/card.do?command=getAllCards");
	}
	
	/////////////////////// GuestBook///////////////////////////
	public ModelAndView linkGuestBook(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("linkGuestBook controll");
		String url = request.getParameter("url");
		CardVO cardVO = cardService.getCard(url);
		
		List<CardcommentVO> commentList = cardService.getAllCardComments(cardVO.getCardNo());
		return new ModelAndView("url/"+url+"/guestBook","commentList",commentList);
	}
	
	public ModelAndView writeCardComment(HttpServletRequest request, HttpServletResponse response,
			HttpSession session, CardcommentVO comvo) throws Exception {
		System.out.println("writeCardComment 컨트롤러");
		String url = request.getParameter("url");
		
		CardVO cardVO = cardService.getCard(url);
		comvo.setCardVO(cardVO);
		System.out.println("vo::"+comvo);
		cardService.writeCardComment(comvo);
		
		return new ModelAndView("redirect:/card.do?command=linkGuestBook&&url="+url);
	}
}