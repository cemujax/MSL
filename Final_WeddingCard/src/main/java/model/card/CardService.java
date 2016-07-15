package model.card;

import java.sql.SQLException;
import java.util.List;

public interface CardService {
	void createCard(CardVO cvo) throws SQLException;
	void modifyCard(CardVO cvo) throws SQLException;
	void deleteCard(int cardNO) throws SQLException;
	CardVO getCard(String url) throws SQLException;
	List<CardVO> getAllCards(String memberId) throws SQLException;
	List<CardVO>  getAllTemplateNoNullCards() throws SQLException;
	boolean urlCheck(String url) throws SQLException;

	// ///////// cardComment
	void writeCardComment(CardcommentVO comvo) throws SQLException;
	void deleteCardCommentByOwner(CardcommentVO comvo) throws SQLException;
	List<CardcommentVO>  getAllCardComments(int cardNo) throws SQLException;
	String writerCheck(CardcommentVO comvo) throws SQLException;
}