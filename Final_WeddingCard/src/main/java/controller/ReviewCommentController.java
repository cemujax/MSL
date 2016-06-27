package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.member.MemberVO;
import model.post.PostVO;
import model.post.ReviewCommentService;
import model.post.ReviewCommentVO;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class ReviewCommentController extends MultiActionController{

	private ReviewCommentService reviewCommentService;

	public void setReviewCommentService(ReviewCommentService reviewCommentService) {
		this.reviewCommentService = reviewCommentService;
	}
	
	public ModelAndView writeReviewComment(HttpServletRequest request, HttpServletResponse response,
			HttpSession session,ReviewCommentVO rcvo) throws Exception {
		System.out.println("writeReviewComment 컨트롤러");
		MemberVO mvo=(MemberVO)session.getAttribute("mvo");
		rcvo.setMemberVO(mvo);
		reviewCommentService.writeReview(rcvo);
		
		return new ModelAndView("redirect:/reviewComment.do?command=getAllReviewComments");
	}
	
	

	
	public ModelAndView getAllReviewComments(HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws Exception {
		System.out.println("getAllReviewComments 컨트롤러");
		List<ReviewCommentVO> reviewList=reviewCommentService.getReviewList();
		System.out.println(reviewList);
		
		return new ModelAndView("post/reviewList","reviewList",reviewList);
		}

	
}
