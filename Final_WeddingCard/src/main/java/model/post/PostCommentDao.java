package model.post;

import java.util.List;

public interface PostCommentDao {
	int writeComment(PostCommentVO pcvo);
	int modifyComment(PostCommentVO pcvo);
	int deleteComment(String commentNo);
	PostCommentVO getCommentByNo(String commentNo);
	List<PostCommentVO> getCommentList(String postNo);

}
