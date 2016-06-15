package controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.card.CardService;
import model.card.CardVO;
import model.member.MemberVO;
import model.photobook.PhotoBookVO;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

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
		if(request.getParameter("photoBookNo") != null){
			PhotoBookVO pvo = new PhotoBookVO();
			pvo.setBookNo(Integer.parseInt(request.getParameter("photoBookNo")));
			cvo.setPhotobookVO(pvo);
		}
		

		cardService.createCard(cvo);

		// 생성한 초대장 url
		File file = new File(path + cvo.getUrl() + ".jsp");
		//File file_hall = new File(path + "skin_hall.txt");
		
		if (!file.getParentFile().exists())
			file.getParentFile().mkdirs();
		System.out.println(path);
		
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter( 
				new FileOutputStream(file),"UTF-8")); 
		
		try {
			
			//fw_couple.write("<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8' isELIgnored='false'%>");
			String format = "<%@ page language='java' contentType='text/html; charset=UTF-8'\n"
    +"pageEncoding='UTF-8' isELIgnored='false'%><%@ taglib prefix='c'\n uri='http://java.sun.com/jsp/jstl/core'%>\n"
    +"<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>"
    +"<!DOCTYPE html>\n<html>\n<head>\n<meta charset='UTF-8'>\n<title>Insert title here</title></head>\n<body>\n";
			
			/*
			 * String read = "";
			while( (read = br_couple.readLine()) !=null ){
				//출력용 파일로 뿌린다.
				System.out.println("couple::"+read);
				bw_heaer.append(read);
				bw_heaer.newLine();
				
			}//while
			bw_heaer.flush();
			*/
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
					+ "<jsp:param value='"+cvo.getHallName()+"' name='hallName'/>\n"
					+ "<jsp:param value='"+cvo.getHallLocation()+"' name='hallLocation'/>\n"
					+ "<jsp:param value='"+request.getParameter("photoBookNo")+"' name='photoBookNo'/>\n"
					+ "<jsp:param value='"+request.getParameter("photoBookImg")+"' name='photoBookImg'/>\n"
					+ "<jsp:param value='"+request.getParameter("photoBookComment")+"' name='photoBookComment'/>\n"
					+ "<jsp:param value='"+rvo.getMemberId()+"' name='memberId'/>\n"
					+"</jsp:include>\n");
			
			bw.write("</body>\n</html>\n");//닫는 태그
			
			bw.close();

		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.println("생성중");
		// request.setAttribute(message, "생성중");
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
			return new ModelAndView("cardList", "cardList", cardList);
		} else {
			return new ModelAndView("login");
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
}