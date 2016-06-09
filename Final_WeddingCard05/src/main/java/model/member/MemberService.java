package model.member;

import java.sql.SQLException;

public interface MemberService {
	
	void registerMember(MemberVO mvo) throws SQLException;
	boolean idCheck(String memberId) throws SQLException;
	MemberVO login(MemberVO mvo) throws SQLException;
	String findId(MemberVO mvo) throws SQLException;
	String findPassword(MemberVO mvo) throws SQLException;
	
}
