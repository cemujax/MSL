package model.card;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.member.MemberVO;

public class CardTemplateDaoImpl implements CardTemplateDao {

	private SqlSession sqlSession;

	 public void setSqlSession(SqlSession sqlSession) {
	      this.sqlSession = sqlSession;
	   }
	
	public void createCardTemplate(CardTemplateVO ctvo) throws SQLException {
		sqlSession.insert("cardSql.createCardTemplate", ctvo);
	}

	public List<CardTemplateVO> getAllCardTemplates() throws SQLException {
		return  sqlSession.selectList("cardSql.getAllCardTemplates");
	}

	public CardTemplateVO getCardTemplateByTemplateName(String cardTemplateName)
			throws SQLException {
		return sqlSession.selectOne("cardSql.getCardTemplateByTemplateName", cardTemplateName);
	}

	public CardTemplateVO getCardTemplateByTemplateNo(int cardTemplateNo)
			throws SQLException {
		return sqlSession.selectOne("cardSql.getCardTemplateByTemplateNo", cardTemplateNo);
	}

	public void deleteTemplate(int cardTemplateNo) throws SQLException {
		sqlSession.delete("cardSql.deleteTemplate", cardTemplateNo);
	}
   
   
}