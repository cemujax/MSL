package model.post;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class PostCommentDaoImpl implements PostCommentDao{
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public int writeComment(PostCommentVO pcvo) {
		return sqlSession.insert("postCommentSql.writeComment", pcvo);
	}

	public int modifyComment(PostCommentVO pcvo) {
		return sqlSession.update("postCommentSql.modifyComment", pcvo);
	}

	public int deleteComment(int commentNo) {
		return sqlSession.delete("postCommentSql.deleteComment", commentNo);
	}

	public List<PostCommentVO> getCommentList(int postNo) {
		return sqlSession.selectList("postCommentSql.getCommentList", postNo);
	}

}
