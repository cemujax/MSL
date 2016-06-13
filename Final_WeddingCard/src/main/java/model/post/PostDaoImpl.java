package model.post;

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

	public List<PostVO> getPostList(String kind) {
		return sqlSession.selectList("postSql.getPostList", kind);
	}

	public PostVO getPostByNo(PostVO pvo) {
		return sqlSession.selectOne("postSql.getPostByNo", pvo);
	}

}
