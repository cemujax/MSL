package model.post;

import java.util.List;

public interface PostService {
	////////////////////////// post
	void writePost(PostVO pvo);
	void modifyPost(PostVO pvo);
	void deletePost(int postNo);
	List<PostVO> getPostList(String kind);
	PostVO getPostByNo(PostVO pvo);
	
	////////////////////////// comment
	void writeComment(PostCommentVO pcvo);
	void modifyComment(PostCommentVO pcvo);
	void deleteComment(int commentNo);
	List<PostCommentVO> getCommentList(int postNo);
	
	////////////////////////// review
	void writeReview(ReviewCommentVO rcvo);
	List<ReviewCommentVO> getReviewList();

}
