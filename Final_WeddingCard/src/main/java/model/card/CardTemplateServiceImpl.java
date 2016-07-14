package model.card;

import java.sql.SQLException;
import java.util.List;

public class CardTemplateServiceImpl implements CardTemplateService{
	
	private CardTemplateDao cardTemplateDao;

	
	public void setCardTemplateDao(CardTemplateDao cardTemplateDao) {
		this.cardTemplateDao = cardTemplateDao;
	}

	public void createCardTemplate(CardTemplateVO ctvo) throws SQLException {
		cardTemplateDao.createCardTemplate(ctvo);
		
	}


	public List<CardTemplateVO> getAllCardTemplates() throws SQLException {
		return cardTemplateDao.getAllCardTemplates();
	}

	public CardTemplateVO getCardTemplateByTemplateName(String cardTemplateName)
			throws SQLException {
		return cardTemplateDao.getCardTemplateByTemplateName(cardTemplateName);
	}

	public CardTemplateVO getCardTemplateByTemplateNo(int cardTemplateNo)
			throws SQLException {
		return cardTemplateDao.getCardTemplateByTemplateNo(cardTemplateNo);
	}

	public void deleteTemplate(int cardTemplateNo) throws SQLException {
		cardTemplateDao.deleteTemplate(cardTemplateNo);
	}






}
