package model.post;

import java.util.List;

public class PostCommentServiceImpl implements PostCommentService{
	private PostCommentDao postCommentDao;

	public void setPostCommentDao(PostCommentDao postCommentDao) {
		this.postCommentDao = postCommentDao;
	}
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

}
