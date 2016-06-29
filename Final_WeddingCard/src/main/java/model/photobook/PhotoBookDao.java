package model.photobook;

import java.util.List;

public interface PhotoBookDao {
	List<PhotoBookVO> getPhotoBookList(String memberId);
	PhotoBookVO getPhotoBookByNo(String bookNo);
	int createPhotoBook(PhotoBookVO pbvo);
	int modifyPhotoBook(PhotoBookVO pbvo);
	int deletePhotoBook(String bookNo);
}
