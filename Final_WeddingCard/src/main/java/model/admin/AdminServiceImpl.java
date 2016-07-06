package model.admin;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.card.CardService;
import model.card.CardVO;
import model.member.MemberVO;

public class AdminServiceImpl implements AdminService{
	private AdminDao adminDao;
	private CardService cardService;
	
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public void setCardService(CardService cardService) {
		this.cardService = cardService;
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


	public void deleteMember(String member_id) {
		adminDao.deleteMember(member_id);
	}

	public List<String> getUrlById(String memberId) throws SQLException {
		List<CardVO> cardList = cardService.getAllCards(memberId);
		
		List<String> urlList = new ArrayList<String>();
		for(CardVO vo : cardList) {
			urlList.add(vo.getUrl());
		}
		
		return urlList;
	}

}
