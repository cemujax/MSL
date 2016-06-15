package model.post;

import java.util.List;

public interface PostCommentService {
	void writeComment(PostCommentVO pcvo);
	void modifyComment(PostCommentVO pcvo);
	void deleteComment(int commentNo);
	List<PostCommentVO> getCommentList(int postNo);
}
