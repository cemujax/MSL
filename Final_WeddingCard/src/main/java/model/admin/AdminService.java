package model.admin;

import model.member.MemberVO;

public interface AdminService {
	ListVO getAllMembers(String page);
	int totalCount();

	int modifyMember(MemberVO memberVO);
	int deleteMember(String member_id);
	int executeUpdate(MemberVO mvo);
	
}
