package model.photobook;

import java.util.List;

public interface PhotoBookDao {
	List<PhotoBookVO> getPhotoBookList(String memberId);
	PhotoBookVO getPhotoBookByNo(PhotoBookVO pbvo);
	int createPhotoBook(PhotoBookVO pbvo);
	int modifyPhotoBook(PhotoBookVO pbvo);
	int deletePhotoBook(int bookNo);
}
