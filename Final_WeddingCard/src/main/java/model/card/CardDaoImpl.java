package model.card;

import java.sql.SQLException;
import java.util.List;

import model.member.MemberDao;
import model.member.MemberVO;

import org.apache.ibatis.session.SqlSession;

public class CardDaoImpl implements CardDao{
   
   private SqlSession sqlSession;

   public void setSqlSession(SqlSession sqlSession) {
      this.sqlSession = sqlSession;
   }
   
   //////////////////////////////////////////////////
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

   @Override
   public CardVO urlCheck(String url) throws SQLException {
      return sqlSession.selectOne("carSql.urlCheck", url);
   }


}