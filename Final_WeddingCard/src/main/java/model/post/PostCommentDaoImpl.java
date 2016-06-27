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

	public int deleteComment(String commentNo) {
		return sqlSession.delete("postCommentSql.deleteComment", commentNo);
	}

	public PostCommentVO getCommentByNo(String commentNo) {
		return sqlSession.selectOne("postCommentSql.getCommentByNo", commentNo);
	}

	public List<PostCommentVO> getCommentList(String postNo) {
		return sqlSession.selectList("postCommentSql.getCommentList", postNo);
	}

}
