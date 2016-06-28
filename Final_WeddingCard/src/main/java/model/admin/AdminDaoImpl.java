package model.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.member.MemberVO;

public class AdminDaoImpl implements AdminDao{
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	
	public List<MemberVO> getAllMembers(String page) {
		return sqlSession.selectList("memberSql.getAllMembers", page);
	}


	public int totalCount() {
		return sqlSession.selectOne("memberSql.totalCount");
	}

}
