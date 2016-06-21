package model.post;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class ReviewCommentDaoImpl implements ReviewCommentDao{
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public int writeReview(ReviewCommentVO rcvo) {
		return sqlSession.insert("reviewSql.writeReview", rcvo);
	}

	public List<ReviewCommentVO> getReviewList() {
		return sqlSession.selectList("reviewSql.getReviewList");
	}

}
