package model.post;

import java.util.List;

public interface ReviewCommentDao {
	int writeReview(ReviewCommentVO rcvo);
	List<ReviewCommentVO> getReviewList();

}
