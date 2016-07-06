package model.admin;

import java.sql.SQLException;
import java.util.List;

import model.card.CardVO;
import model.member.MemberVO;

public interface AdminService {
	ListVO getAllMembers(String page);
	int totalCount();

	int modifyMember(MemberVO memberVO);
	void deleteMember(String member_id);
	
	List<String> getUrlById(String memberId) throws SQLException;
	
}
