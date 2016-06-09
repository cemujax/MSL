package model.member;

import java.sql.SQLException;

public interface MemberDao {
	void registerMember(MemberVO mvo) throws SQLException;
	Object idCheck(String memberId) throws SQLException;
	MemberVO login(MemberVO mvo) throws SQLException;
	String findId(MemberVO mvo) throws SQLException;
	String findPassword(MemberVO mvo) throws SQLException;
}
