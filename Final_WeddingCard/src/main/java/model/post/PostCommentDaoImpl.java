package model.post;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class PostCommentDaoImpl implements PostCommentDao{
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public int writeComment(PostCommentVO pcvo) {
		return sqlSession.insert("postSql.writeComment", pcvo);
	}

	public int modifyComment(PostCommentVO pcvo) {
		return sqlSession.update("postSql.modifyComment", pcvo);
	}

	public int deleteComment(int commentNo) {
		return sqlSession.delete("postSql.deleteComment", commentNo);
	}

	public List<PostCommentVO> getCommentList(int postNo) {
		return sqlSession.selectList("postSql.getCommentList", postNo);
	}

}
