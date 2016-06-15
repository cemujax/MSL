package model.card;

import java.sql.SQLException;
import java.util.List;

public class CardcommentServiceImpl implements CardcommentService{
	
	CardcommentDao cardcommentDao; 
	@Override
	public void writeCardComment(CardcommentVO ccvo) throws SQLException {
		
	}

	@Override
	public void modifyCardComment(CardcommentVO ccvo) throws SQLException {
		
	}

	@Override
	public void deleteCardComment(int cardcommentNo) throws SQLException {
		
	}

	@Override
	public List<CardVO> getAllCardComments() throws SQLException {
		return null;
	}

	@Override
	public boolean passwordCheck(String password) throws SQLException {
		return false;
	}

}
