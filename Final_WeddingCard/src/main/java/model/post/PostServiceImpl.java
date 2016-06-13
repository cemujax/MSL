package model.post;

import java.util.List;

public class PostServiceImpl implements PostService{
	private PostDao postDao;
	private PostCommentDao postCommentDao;
	private ReviewCommentDao reviewCommentDao;

	public void setPostDao(PostDao postDao) {
		this.postDao = postDao;
	}

	public void setPostCommentDao(PostCommentDao postCommentDao) {
		this.postCommentDao = postCommentDao;
	}

	public void setReviewCommentDao(ReviewCommentDao reviewCommentDao) {
		this.reviewCommentDao = reviewCommentDao;
	}

////////////////////////////////////////////////post
	public void writePost(PostVO pvo) {
		postDao.writePost(pvo);
	}

	public void modifyPost(PostVO pvo) {
		postDao.modifyPost(pvo);
	}

	public void deletePost(int postNo) {
		postDao.deletePost(postNo);
	}

	public List<PostVO> getPostList(String kind) {
		return postDao.getPostList(kind);
	}

	public PostVO getPostByNo(PostVO pvo) {
		return postDao.getPostByNo(pvo);
	}

//////////////////////////////////////////////// comment
	public void writeComment(PostCommentVO pcvo) {
		postCommentDao.writeComment(pcvo);
	}

	public void modifyComment(PostCommentVO pcvo) {
		postCommentDao.modifyComment(pcvo);
	}

	public void deleteComment(int commentNo) {
		postCommentDao.deleteComment(commentNo);
	}

	public List<PostCommentVO> getCommentList(int postNo) {
		return postCommentDao.getCommentList(postNo);
	}

//////////////////////////////////////////////// review
	public void writeReview(ReviewCommentVO rcvo) {
		reviewCommentDao.writeReview(rcvo);
	}

	public List<ReviewCommentVO> getReviewList() {
		return reviewCommentDao.getReviewList();
	}

}
