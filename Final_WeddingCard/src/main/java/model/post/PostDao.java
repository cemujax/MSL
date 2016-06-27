package model.post;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

public interface PostDao {
	int writePost(PostVO pvo);
	int modifyPost(PostVO pvo);
	int deletePost(int postNo);
	List<PostVO> getPostList(HashMap<String, String> map);
	PostVO getPostByNo(int postNo);
	
	int totalCount(String kind) throws SQLException;

}
