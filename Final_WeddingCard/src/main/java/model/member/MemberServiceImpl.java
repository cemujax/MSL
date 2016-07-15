package model.member;

import java.sql.SQLException;

public class MemberServiceImpl implements MemberService{
	
	private MemberDao memberDao;

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public void registerMember(MemberVO mvo) throws SQLException {
		memberDao.registerMember(mvo);
	}

	public boolean idCheck(String memberId) throws SQLException {
		
		boolean flag = true;
		if(memberDao.idCheck(memberId) == null)
			flag = false;
		
		return flag;
	}

	public MemberVO login(MemberVO mvo) throws SQLException {
		return memberDao.login(mvo);
	}

	public String findId(MemberVO mvo) throws SQLException {
		return memberDao.findId(mvo);
	}

	public String findPassword(MemberVO mvo) throws SQLException {
		return memberDao.findPassword(mvo);
	}

}
