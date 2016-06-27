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

	public void deleteComment(String commentNo) {
		postCommentDao.deleteComment(commentNo);
	}
	
	public PostCommentVO getCommentByNo(String commentNo) {
		return postCommentDao.getCommentByNo(commentNo);
	}

	public List<PostCommentVO> getCommentList(String postNo) {
		return postCommentDao.getCommentList(postNo);
	}

}
