package model.card;

import java.sql.SQLException;
import java.util.List;

public interface CardcommentDao {
	void writeCardComment(CardcommentVO ccvo) throws SQLException;
	void modifyCardComment(CardcommentVO ccvo) throws SQLException;
	void deleteCardComment(int cardcommentNo) throws SQLException;
	List<CardVO>  getAllCardComments() throws SQLException;
	boolean passwordCheck(String password) throws SQLException;
}
