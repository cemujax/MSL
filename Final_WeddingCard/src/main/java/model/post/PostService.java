package model.post;

import java.util.HashMap;
import java.util.List;

public interface PostService {
	void writePost(PostVO pvo);
	void modifyPost(PostVO pvo);
	void deletePost(int postNo);
	ListVO getPostList(HashMap<String, String> map) throws Exception;
	PostVO getPostByNo(int postNo);
	
	public List<PostCommentVO> getCommentList(String postNo);
}
