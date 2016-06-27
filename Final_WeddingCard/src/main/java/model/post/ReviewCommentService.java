package model.post;

import java.util.HashMap;
import java.util.List;

public interface ReviewCommentService {
	void writeReview(ReviewCommentVO rcvo);
	List<ReviewCommentVO> getReviewList();

}
