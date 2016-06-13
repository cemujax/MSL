package model.post;

import java.util.List;

public interface PostCommentDao {
	int writeComment(PostCommentVO pcvo);
	int modifyComment(PostCommentVO pcvo);
	int deleteComment(int commentNo);
	List<PostCommentVO> getCommentList(int postNo);

}
