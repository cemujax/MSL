package model.admin;

import java.util.List;

import model.member.MemberVO;

public interface AdminDao {
	// ======== Member ===========
	List<MemberVO> getAllMembers(String page);
	int totalCount();
	
	int modifyMember(MemberVO memberVO);
	
	int deleteMember(String member_id);
	

}
