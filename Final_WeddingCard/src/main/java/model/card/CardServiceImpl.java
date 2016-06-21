package model.card;

import java.sql.SQLException;
import java.util.List;

public class CardServiceImpl implements CardService {

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

	public CardVO getCard(String url) throws SQLException {
		return cardDao.getCard(url);
	}

	public List<CardVO> getAllCards(String memberId) throws SQLException {
		return cardDao.getAllCards(memberId);
	}

	public boolean urlCheck(String url) throws SQLException {
		return cardDao.urlCheck(url);
	}

	public void writeCardComment(CardcommentVO comvo) throws SQLException {
		cardDao.writeCardComment(comvo);
	}

	public List<CardcommentVO> getAllCardComments(int cardNo)
			throws SQLException {
		return cardDao.getAllCardComments(cardNo);
	}
}