package controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.member.MemberVO;
import model.post.ListVO;
import model.post.PostService;
import model.post.PostVO;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class PostController extends MultiActionController{
	private PostService postService;

	public void setPostService(PostService postService) {
		this.postService = postService;
	}
	
	public ModelAndView writeQnA(HttpServletRequest request, HttpServletResponse response,
							HttpSession session, PostVO pvo) throws Exception {
		System.out.println("writeQnA 컨트롤러");
		MemberVO mvo = (MemberVO)session.getAttribute("mvo"); 
		if(mvo!=null){
			System.out.println(mvo);
			System.out.println(pvo);
			pvo.setMemberVO(mvo);
			pvo.setKind("qna");
			postService.writePost(pvo);
			
			return new ModelAndView("redirect:/post.do?command=getQnA&&postNo="+ pvo.getPostNo());
			
		}else{
			return new ModelAndView("login/loginregister");
		}
		
	}
	
	public ModelAndView getQnA(HttpServletRequest request, HttpServletResponse response,HttpSession session)
							throws Exception {
		System.out.println("getQnA 컨트롤러");
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		System.out.println(postNo);
		PostVO rpvo = postService.getPostByNo(postNo);
		
		request.setAttribute("commentList", postService.getCommentList(postNo+ ""));
		
		return new ModelAndView("post/postQna", "pvo", rpvo);
	}
	
	public ModelAndView getAllQnAs(HttpServletRequest request, HttpServletResponse response,HttpSession session)
							throws Exception {
		System.out.println("getAllQnAs 컨트롤러");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("kind", "qna");
		map.put("page", request.getParameter("page"));
		
		ListVO listVO= postService.getPostList(map);
		
		return new ModelAndView("post/postQnaList", "listVO", listVO);
	}
	
	public ModelAndView modifyViewQnA(HttpServletRequest request, HttpServletResponse response,HttpSession session)
			throws Exception {
		System.out.println("modifyViewQnA 컨트롤러");
		
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		
		PostVO pvo=(PostVO)postService.getPostByNo(postNo);
		
		return new ModelAndView("post/postQnaUpdate","pvo",pvo);
		}
	
	public ModelAndView modifyQnA(HttpServletRequest request, HttpServletResponse response,HttpSession session,PostVO pvo)
			throws Exception {
		System.out.println("modifyQnA 컨트롤러");
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		System.out.println(postNo);
		MemberVO mvo=(MemberVO)session.getAttribute("mvo");
		pvo.setMemberVO(mvo);
		System.out.println("실행 전==="+pvo);
		postService.modifyPost(pvo);
		System.out.println(pvo);
		
		return new ModelAndView("redirect:/post.do?command=getQnA&&postNo="+pvo.getPostNo());
		
		}
	public ModelAndView deleteQnA(HttpServletRequest request, HttpServletResponse response, PostVO pvo)
			throws Exception {
		System.out.println("deleteQnA 컨트롤러");
		
		System.out.println(pvo.getPostNo());
		postService.deletePost(pvo.getPostNo());
		
		return new ModelAndView("redirect:/post.do?command=getAllQnAs");
		}
	
	public ModelAndView writeAnoneQnA(HttpServletRequest request, HttpServletResponse response,
				HttpSession session, PostVO pvo) throws Exception {
		System.out.println("writeAnoneQnA 컨트롤러");
		MemberVO mvo = (MemberVO)session.getAttribute("mvo"); 
		if(mvo!=null){
		System.out.println(mvo);
		System.out.println(pvo);
		pvo.setMemberVO(mvo);
		pvo.setKind("anoneqna");
		postService.writePost(pvo);
		
		return new ModelAndView("redirect:/post.do?command=getAnoneQnA&&postNo="+ pvo.getPostNo());
		
		}else{
		return new ModelAndView("login/loginregister");
		}
	
	}
	
	public ModelAndView getAnoneQnA(HttpServletRequest request, HttpServletResponse response,HttpSession session)
				throws Exception {
		System.out.println("getAnoneQnA 컨트롤러");
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		System.out.println(postNo);
		PostVO rpvo = postService.getPostByNo(postNo);

		request.setAttribute("commentList", postService.getCommentList(postNo+ ""));
		
		return new ModelAndView("post/postAnoneQna", "pvo", rpvo);
	}
	
	public ModelAndView getAllAnoneQnAs(HttpServletRequest request, HttpServletResponse response,HttpSession session)
				throws Exception {
		System.out.println("getAllAnoneQnAs 컨트롤러");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("kind", "anoneqna");
		map.put("page", request.getParameter("page"));
		
		ListVO listVO= postService.getPostList(map);
		
		return new ModelAndView("post/postAnoneQnaList", "listVO", listVO);
	}
	
	public ModelAndView modifyViewAnoneQnA(HttpServletRequest request, HttpServletResponse response,HttpSession session)
	throws Exception {
		System.out.println("modifyViewAnoneQnA 컨트롤러");
		
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		
		PostVO pvo=(PostVO)postService.getPostByNo(postNo);
		
		return new ModelAndView("post/postAnoneQnaUpdate","pvo",pvo);
		}
	
	public ModelAndView modifyAnoneQnA(HttpServletRequest request, HttpServletResponse response,HttpSession session,PostVO pvo)
	throws Exception {
		System.out.println("modifyAnoneQnA 컨트롤러");
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		System.out.println(postNo);
		MemberVO mvo=(MemberVO)session.getAttribute("mvo");
		pvo.setMemberVO(mvo);
		System.out.println("실행 전==="+pvo);
		postService.modifyPost(pvo);
		System.out.println(pvo);
		
		return new ModelAndView("redirect:/post.do?command=getAnoneQnA&&postNo="+pvo.getPostNo());
	
	}
	public ModelAndView deleteAnoneQnA(HttpServletRequest request, HttpServletResponse response, PostVO pvo)
	throws Exception {
		System.out.println("deleteAnoneQnA 컨트롤러");
		
		System.out.println(pvo.getPostNo());
		postService.deletePost(pvo.getPostNo());
		
		return new ModelAndView("redirect:/post.do?command=getAllAnoneQnAs");
		}
	

}
