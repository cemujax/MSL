package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.member.MemberVO;
import model.post.PostCommentService;
import model.post.PostCommentVO;
import model.post.PostVO;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class PostCommentController extends MultiActionController{
	private PostCommentService postCommentService;

	public void setPostCommentService(PostCommentService postCommentService) {
		this.postCommentService = postCommentService;
	}

	public ModelAndView write(HttpServletRequest request, HttpServletResponse response,
							HttpSession session, PostCommentVO pcvo) throws Exception {
		MemberVO mvo = new MemberVO();
		mvo.setMemberId(((MemberVO) session.getAttribute("mvo")).getMemberId());
		PostVO pvo = new PostVO();
		pvo.setPostNo(Integer.parseInt(request.getParameter("pno")));
		
		pcvo.setMemberVO(mvo);
		pcvo.setPostVO(pvo);
		
		postCommentService.writeComment(pcvo);
		
		return new ModelAndView("JsonView", "pcvo", postCommentService.getCommentByNo(pcvo.getCommentNo()+ ""));
	} // write
	
	public ModelAndView update(HttpServletRequest request, HttpServletResponse response,
							PostCommentVO pcvo) throws Exception {
		postCommentService.modifyComment(pcvo);
		
		return new ModelAndView("JsonView", "pcvo", pcvo);
	} // update
	
	public ModelAndView delete(HttpServletRequest request, HttpServletResponse response,
							PostCommentVO pcvo) throws Exception {
		String commentNo = request.getParameter("commentNo");
		
		postCommentService.deleteComment(commentNo);

		return new ModelAndView("JsonView", "commentNo", commentNo);
	} // delete
	
	public ModelAndView detail(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String cno = request.getParameter("cno");
		
		return new ModelAndView("JsonView", "pcvo", postCommentService.getCommentByNo(cno));
	} // detail
	
	public ModelAndView list(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String pno = request.getParameter("pno");
		
		return new ModelAndView("JsonView", "commentList", postCommentService.getCommentList(pno));
	} // list
}
