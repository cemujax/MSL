package model.admin;

import java.util.List;

import model.member.MemberVO;

public interface AdminDao {
	// ======== Member ===========
	List<MemberVO> getAllMembers(String page);
	int totalCount();

}
