package model.post;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class PostDaoImpl implements PostDao{
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public int writePost(PostVO pvo) {
		return sqlSession.insert("postSql.writePost", pvo);
	}

	public int modifyPost(PostVO pvo) {
		return sqlSession.update("postSql.modifyPost", pvo);
	}

	public int deletePost(int postNo) {
		return sqlSession.delete("postSql.deletePost", postNo);
	}

	public List<PostVO> getPostList(HashMap<String, String> map) {
		return sqlSession.selectList("postSql.getPostList", map);
	}

	public PostVO getPostByNo(int postNo) {
		return sqlSession.selectOne("postSql.getPostByNo", postNo);
	}

	public int totalCount(String kind) throws SQLException {
		return sqlSession.selectOne("postSql.totalCount", kind);
	}


}
