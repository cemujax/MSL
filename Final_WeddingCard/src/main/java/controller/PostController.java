package controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.member.MemberVO;
import model.post.ListVO;
import model.post.PostService;
import model.post.PostVO;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class PostController extends MultiActionController {
	private PostService postService;

	public void setPostService(PostService postService) {
		this.postService = postService;
	}

	// TODO ==================================== QnA ==============================
	public ModelAndView writeQnA(HttpServletRequest request,HttpServletResponse response, PostVO pvo)
			throws Exception {		
		System.out.print("Post Controller :: writeQnA :: ");
		
		MemberVO mvo = (MemberVO) request.getSession().getAttribute("mvo");
		
		if (mvo != null) {
			pvo.setMemberVO(mvo);
			pvo.setKind("qna");
			postService.writePost(pvo);

			System.out.println(mvo.getMemberId());
			
			return new ModelAndView("redirect:/post.do?command=getQnA&&postNo="
					+ pvo.getPostNo());

		} else {
			System.out.println("");
			
			return new ModelAndView("redirect:/authentication/login.jsp");
		}

	}

	public ModelAndView getQnA(HttpServletRequest request, HttpServletResponse response)
							throws Exception {
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		System.out.println("Post Controller :: getQnA :: postNo "+ postNo);
		
		PostVO rpvo = postService.getPostByNo(postNo);

		request.setAttribute("commentList",
				postService.getCommentList(postNo + ""));

		return new ModelAndView("post/postQna", "pvo", rpvo);
	}

	public ModelAndView getAllQnAs(HttpServletRequest request, HttpServletResponse response) 
							throws Exception {
		System.out.println("Post Controller :: getAllQnAs :: page "+ request.getParameter("page"));
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("kind", "qna");
		map.put("page", request.getParameter("page"));

		ListVO listVO = postService.getPostList(map);

		return new ModelAndView("post/postQnaList", "listVO", listVO);
	}

	public ModelAndView modifyViewQnA(HttpServletRequest request, HttpServletResponse response) 
							throws Exception {
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		System.out.println("Post Controller :: modifyViewQnA :: "+ postNo);

		PostVO pvo = (PostVO) postService.getPostByNo(postNo);

		return new ModelAndView("post/postQnaUpdate", "pvo", pvo);
	}

	public ModelAndView modifyQnA(HttpServletRequest request, HttpServletResponse response, PostVO pvo)
							throws Exception {
		System.out.println("Post Controller :: modifyQnA :: postNo "+ pvo.getPostNo());

		MemberVO mvo = (MemberVO) request.getSession().getAttribute("mvo");

		pvo.setMemberVO(mvo);

		postService.deleteCommentListByPostNo(pvo.getPostNo()+ "");
		postService.modifyPost(pvo);

		return new ModelAndView("redirect:/post.do?command=getQnA&&postNo="
				+ pvo.getPostNo() + "&&page=" + request.getParameter("page"));

	}

	public ModelAndView deleteQnA(HttpServletRequest request,
			HttpServletResponse response, PostVO pvo) throws Exception {
		System.out.println("Post Controller :: deleteQnA :: postNo "+ pvo.getPostNo());

		postService.deletePost(pvo.getPostNo());

		return new ModelAndView("redirect:/post.do?command=getAllQnAs");
	}

	// TODO =============================== Anonymous ==========================
	public ModelAndView writeAnoneQnA(HttpServletRequest request, HttpServletResponse response, PostVO pvo)
							throws Exception {
		System.out.println("Post Controller :: writeAnoneQnA");
		
		MemberVO mvo = (MemberVO) request.getSession().getAttribute("mvo");
		
		if (mvo != null) {
			pvo.setMemberVO(mvo);
			pvo.setKind("anoneqna");
			postService.writePost(pvo);

			return new ModelAndView("redirect:/post.do?command=getAnoneQnA&&postNo="+ pvo.getPostNo());

		} else {
			return new ModelAndView("redirect:/authentication/login.jsp");
		}

	}

	public ModelAndView getAnoneQnA(HttpServletRequest request,	HttpServletResponse response) 
							throws Exception {
		int postNo = Integer.parseInt(request.getParameter("postNo"));

		System.out.println("Post Controller :: getAnoneQnA :: postNo "+ postNo);
		
		PostVO rpvo = postService.getPostByNo(postNo);

		request.setAttribute("commentList",
				postService.getCommentList(postNo + ""));

		return new ModelAndView("post/postAnoneQna", "pvo", rpvo);
	}

	public ModelAndView getAllAnoneQnAs(HttpServletRequest request, HttpServletResponse response) 
							throws Exception {
		System.out.println("Post Controller :: getAllAnoneQnAs :: page "+ request.getParameter("page"));
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("kind", "anoneqna");
		map.put("page", request.getParameter("page"));

		ListVO listVO = postService.getPostList(map);

		return new ModelAndView("post/postAnoneQnaList", "listVO", listVO);
	}

	public ModelAndView modifyViewAnoneQnA(HttpServletRequest request, HttpServletResponse response) 
							throws Exception {
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		System.out.println("Post Controller :: modifyViewAnoneQnA :: "+ postNo);

		PostVO pvo = (PostVO) postService.getPostByNo(postNo);

		return new ModelAndView("post/postAnoneQnaUpdate", "pvo", pvo);
	}

	public ModelAndView modifyAnoneQnA(HttpServletRequest request, HttpServletResponse response, 
							PostVO pvo)	throws Exception {
		System.out.println("Post Controller :: modifyAnoneQnA :: postNo "+ pvo.getPostNo());

		MemberVO mvo = (MemberVO) request.getSession().getAttribute("mvo");

		pvo.setMemberVO(mvo);

		postService.modifyPost(pvo);

		return new ModelAndView(
				"redirect:/post.do?command=getAnoneQnA&&postNo="
						+ pvo.getPostNo() + "&&page="
						+ request.getParameter("page"));

	}

	public ModelAndView deleteAnoneQnA(HttpServletRequest request, HttpServletResponse response, 
							PostVO pvo) throws Exception {
		System.out.println("Post Controller :: deleteAnoneQnA :: postNo "+ pvo.getPostNo());

		postService.deleteCommentListByPostNo(pvo.getPostNo()+ "");
		postService.deletePost(pvo.getPostNo());

		return new ModelAndView("redirect:/post.do?command=getAllAnoneQnAs");
	}

}
