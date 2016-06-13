package model.post;

import java.util.List;

public interface PostDao {
	int writePost(PostVO pvo);
	int modifyPost(PostVO pvo);
	int deletePost(int postNo);
	List<PostVO> getPostList(String kind);
	PostVO getPostByNo(PostVO pvo);

}
