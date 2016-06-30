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
      
      boolean result = false;
      if(session!=null && rvo != null){//
         session.setAttribute("mvo", rvo);
         result = true;
      }
      if(pvo.getMemberId().equals("pcp8282")){//관리자
    	  return new ModelAndView("redirect:/admin.do?command=getAllMembers");
      }
      
      String url = request.getParameter("url");
		if (url == null)
			return new ModelAndView("authentication/login_result");
		else {//방명록쪽 로그인
			return new ModelAndView("JsonView", "result", result);
		}
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
      
       String url = request.getParameter("url");
		if (url == null)
			return new ModelAndView("redirect:/index.jsp");
		else {
			System.out.println("guest");//방명록 로그아웃
			return new ModelAndView(
					"redirect:/card.do?command=linkGuestBook&&url=" + url);
		}
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
