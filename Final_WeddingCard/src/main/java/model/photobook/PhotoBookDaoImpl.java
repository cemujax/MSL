package model.photobook;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class PhotoBookDaoImpl implements PhotoBookDao{
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List<PhotoBookVO> getPhotoBookList(String memberId) {
		return sqlSession.selectList("photoBookSql.getPhotoBookList", memberId);
	}

	public PhotoBookVO getPhotoBookByNo(PhotoBookVO pbvo) {
		return sqlSession.selectOne("photoBookSql.getPhotoBookByNo", pbvo);
	}

	public int createPhotoBook(PhotoBookVO pbvo) {
		return sqlSession.insert("photoBookSql.createPhotoBook", pbvo);
	}

	public int modifyPhotoBook(PhotoBookVO pbvo) {
		return sqlSession.update("photoBookSql.modifyPhotoBook", pbvo);
	}

	public int deletePhotoBook(int bookNo) {
		return sqlSession.delete("photoBookSql.deletePhotoBook", bookNo);
	}

}
