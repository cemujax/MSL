package controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
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

public class CardController extends MultiActionController{

	private CardService cardService;
	private String path;
	
	public void setCardService(CardService cardService) {
		this.cardService = cardService;
	}
	
	public void setPath(String path) {
		this.path = path;
	}

	public ModelAndView createCard(HttpServletRequest request,
			HttpServletResponse response,  HttpSession session, CardVO cvo) throws Exception{
		
		System.out.println("createCard 컨트롤러");
		
		MemberVO rvo = (MemberVO)session.getAttribute("mvo");
		cvo.setMemberVO(rvo);
		
		// photobook도 setter로 넣읍시다 삽질 노노노노노노
		
		cardService.createCard(cvo);
		
		File file = new File(path+ cvo.getUrl()+ ".jsp");

		FileWriter fw;
		try{
			fw = new FileWriter(file);
			String jspFormat = "<%@ page language='java' contentType='text/html; charset=UTF-8'"
					+ "pageEncoding='UTF-8' isELIgnored='false'%> <%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%> <!DOCTYPE HTML> <html> <head> <title>My Wedding</title></head><body>";
			
			//fw.write(jspFormat);
			fw.write("<jsp:include page='basicSkin.jsp' flush='true'/>");
			//fw.write("</body></html>");
			fw.close();
		}catch(IOException e){
			e.printStackTrace();
		}
		return new ModelAndView("redirect:/card.do?command=getAllCards");
	}
	
	public ModelAndView getAllCards(HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		
		System.out.println("getAllCards 컨트롤러");
		
		MemberVO rvo = (MemberVO) request.getSession().getAttribute("mvo");
		System.out.println("memberId::"+ rvo.getMemberId());
		
		if( rvo != null){
			List<CardVO> cardList = cardService.getAllCards(rvo.getMemberId());
			System.out.println("card목록::"+cardList);
			return new ModelAndView("cardList", "cardList", cardList );
		}else{
			return new ModelAndView("login");
		}
	}
	
}
