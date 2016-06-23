package controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.member.MemberService;
import model.member.MemberVO;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class MemberController extends MultiActionController{

   private MemberService memberService;

   public void setMemberService(MemberService memberService) {
      this.memberService = memberService;
   }
   
   public ModelAndView login(HttpServletRequest request,
         HttpServletResponse response, MemberVO pvo) throws Exception{
      System.out.println("login call..");
      System.out.println(pvo);
      MemberVO rvo = memberService.login(pvo);
      System.out.println("login call2222222");

      HttpSession session = request.getSession();
      
      if(session!=null && rvo != null){//로그인 성공
         session.setAttribute("mvo", rvo);
      }
      //이미 바인딩 됐다...
      return new ModelAndView("member/login_result");
   }
   
   public ModelAndView logout(HttpServletRequest request,
         HttpServletResponse response) throws Exception{
	   
	   HttpSession session = request.getSession();
	   
       MemberVO mvo = null;
       if(session != null){
	   mvo =(MemberVO)session.getAttribute("mvo");
       }
       if(mvo != null)
         session.invalidate();
      
      return new ModelAndView("redirect:/index.jsp");
   }
   public ModelAndView register(HttpServletRequest request, HttpServletResponse response, MemberVO mvo) throws SQLException{
      

      memberService.registerMember(mvo);
      System.out.println("register success...");
      return new ModelAndView("redirect:/index.jsp");
   }
   
   public ModelAndView findId(HttpServletRequest request, HttpServletResponse response,MemberVO mvo) throws SQLException{
      
      String memberId =memberService.findId(mvo);
      return new ModelAndView("findIdResult","memberId",memberId);

      
   }
   public ModelAndView findPassword(HttpServletRequest request, HttpServletResponse response, MemberVO mvo) throws SQLException{
      
      String password=memberService.findPassword(mvo);
      return new ModelAndView("findPasswordResult","password",password);
      
   }
   
}
