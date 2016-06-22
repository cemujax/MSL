package model.card;

import java.sql.SQLException;
import java.util.List;

import model.member.MemberDao;
import model.member.MemberVO;

import org.apache.ibatis.session.SqlSession;

public class CardDaoImpl implements CardDao {

	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	// ////////////////////////////////////////////////
	public void createCard(CardVO cvo) throws SQLException {
		sqlSession.insert("cardSql.createCard", cvo);
	}

	public CardVO getCard(String url) throws SQLException {
		return sqlSession.selectOne("cardSql.getCard", url);
	}

	public List<CardVO> getAllCards(String memberId) throws SQLException {
		return sqlSession.selectList("cardSql.getAllCards", memberId);
	}

	public void modifyCard(CardVO cvo) throws SQLException {
		sqlSession.update("cardSql.modifyCard", cvo);
	}

	public void deleteCard(int cardNO) throws SQLException {
		sqlSession.delete("cardSql.deleteCard", cardNO);
	}

	public boolean urlCheck(String url) throws SQLException {
		String rurl = null;
		boolean flag = false;
		rurl = sqlSession.selectOne("cardSql.urlCheck", url);
		if (rurl != null)
			flag = true; // url이 존재함
		return flag;
	}

	public void writeCardComment(CardcommentVO comvo) throws SQLException {
		sqlSession.insert("cardSql.writeCardComment", comvo);
	}

	public List<CardcommentVO> getAllCardComments(int cardNo)
			throws SQLException {
		return sqlSession.selectList("cardSql.getAllCardComments", cardNo);
	}

}