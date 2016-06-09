package model.card;

import java.sql.SQLException;
import java.util.List;

public class CardServiceImpl implements CardService{

	private CardDao cardDao;
	
	public CardDao getCardDao() {
		return cardDao;
	}

	public void setCardDao(CardDao cardDao) {
		this.cardDao = cardDao;
	}

	public void createCard(CardVO cvo) throws SQLException {
		cardDao.createCard(cvo);
	}

	public void modifyCard(CardVO cvo) throws SQLException {
		cardDao.modifyCard(cvo);
		
	}

	public void deleteCard(int cardNO) throws SQLException {
		cardDao.deleteCard(cardNO);
		
	}

	public CardVO getCard(int cardNO) throws SQLException {
		return cardDao.getCard(cardNO);
	}

	public List<CardVO> getAllCards(String memberId) throws SQLException {
		return cardDao.getAllCards(memberId);
	}

}
