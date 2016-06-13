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
        String date = cvo.getCardDate();
         String hour = request.getParameter("hour");
         String min = request.getParameter("min");
         
         date += " " + hour;
         date += " " + min;
         System.out.println("setting후::"+date);
         
         cvo.setCardDate(date);
      // photobook도 setter로 넣읍시다 삽질 노노노노노노
      
      cardService.createCard(cvo);
      
      File file = new File(path+ cvo.getUrl()+ ".jsp");
      if(!file.getParentFile().exists())
         file.getParentFile().mkdirs();
      System.out.println(path);
      FileWriter fw;
      try{
         fw = new FileWriter(file);
         fw.write("<jsp:include page='basicSkin.jsp' flush='true'/>");
         System.out.println("jsp 생성됨");
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
   
   public ModelAndView getCard(HttpServletRequest request,
         HttpServletResponse response) throws Exception{
      
      System.out.println("getCard 컨트롤러");
      
      String url=request.getParameter("url");
      System.out.println("url 값 :: "+url);
      CardVO rvo=(CardVO)cardService.getCard(url);
      System.out.println(rvo);
      request.setAttribute("cvo", rvo);
      System.out.println("cvo set!!!!!!!!!!!!!!!!!");
      return new ModelAndView("url/"+url);
   }
   
}