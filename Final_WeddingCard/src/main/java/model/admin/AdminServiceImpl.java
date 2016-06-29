package model.admin;

import java.util.List;

import model.member.MemberVO;

public class AdminServiceImpl implements AdminService{
	private AdminDao adminDao;
	
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}


	public ListVO getAllMembers(String page) {
		if(page == null || page == "")
			page = "1";
		
		PagingBean pb = new PagingBean(totalCount(), Integer.parseInt(page));
		List<MemberVO> list = adminDao.getAllMembers(page);

		return new ListVO(list, pb);
	}


	public int totalCount() {
		return adminDao.totalCount();
	}


	public int modifyMember(MemberVO memberVO) {


		return adminDao.modifyMember(memberVO);
	}


	public int deleteMember(String member_id) {
		return adminDao.deleteMember(member_id);
	}


	public int executeUpdate(MemberVO mvo) {
		return adminDao.executeUpdate(mvo);
	}

}
