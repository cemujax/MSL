package model.post;

import java.util.List;

public class ReviewCommentServiceImpl implements ReviewCommentService{
	private ReviewCommentDao reviewCommentDao;

	public void setReviewCommentDao(ReviewCommentDao reviewCommentDao) {
		this.reviewCommentDao = reviewCommentDao;
	}

	public void writeReview(ReviewCommentVO rcvo) {
		reviewCommentDao.writeReview(rcvo);
	}

	public List<ReviewCommentVO> getReviewList() {
		return reviewCommentDao.getReviewList();
	}

}
