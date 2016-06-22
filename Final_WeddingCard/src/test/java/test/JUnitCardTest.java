package test;

import java.io.IOException;
import java.io.Reader;

import model.card.CardVO;
import model.member.MemberVO;
import model.photobook.PhotoBookVO;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

public class JUnitCardTest {
	//mybatis Test
		@Test
		public void jUnitTest() throws IOException{
			
			System.out.println("card test~~!");
			
			Reader reader  = Resources.getResourceAsReader("config/SqlMapConfig.xml");
			SqlSessionFactory facotry =
					new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = facotry.openSession();
			
			MemberVO mvo = new MemberVO("pcp8282", "8282", "박찬영", "113123123");
			
			PhotoBookVO pvo = new PhotoBookVO(0, "dsfdsfff", null, null, null, null);
			
	/*		CardVO cvo = new CardVO(973, "무료", "", "예식장", "강남",
					"02","홍홍홍홍군 37-111", "양양 11-11",mvo,pvo,"a","이미지 위치","놀러오시오1");
			CardVO cvo2 = new CardVO(0, "무료2", "", "예식장", "강남",
					"03","길군37-222", "귀양 11-22", mvo, pvo,"b","이미지 위치","놀러오시오2");
			CardVO cvo3 = new CardVO(0, "공짜", "", "ㅋㅋㅋ예식장", "강남",
					"04","동군 37-333", "비양 11-33",mvo, pvo,"c","이미지 위치","놀러오시오3");
			CardVO cvo4 = new CardVO(1068, "공짜", "", "ㅋㅋㅋ예식장", "강남",
					"04","동그리동동군 37-333", "비그리비비양 11-33",mvo, pvo,"d","이미지 위치","놀러오시오3");*/
			
			/// ============== insert ============================
			
			/*System.out.println("card 추가");
			
			System.out.println("insert::"+session.insert("cardSql.createCard", cvo4));
			session.commit();
			
			System.out.println("card 상세정보");
			System.out.println(session.selectOne("cardSql.getCard", "d"));*/
			
			/*System.out.println("card 상세정보");
			System.out.println(session.selectOne("cardSql.getCard", "d"));
			
			System.out.println("card update");
			
			System.out.println("update::"+session.update("cardSql.modifyCard", cvo4));
			session.commit();
			
			System.out.println("card 상세정보");
			System.out.println(session.selectOne("cardSql.getCard", "d"));
			
			System.out.println("card 삭제::"+session.delete("cardSql.deleteCard", 4));
			session.commit();
			
			System.out.println("card List\n"+session.selectList("cardSql.getAllCards", "pcp8282"));*/
			
			
		//	System.out.println(session.selectOne("cardSql.urlCheck", "c"));
			
			
		}
}
