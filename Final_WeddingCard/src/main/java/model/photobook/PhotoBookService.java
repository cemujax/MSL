package model.photobook;

import java.util.List;
import java.util.Map;

public interface PhotoBookService {
	List<PhotoBookVO> getPhotoBookList(String memberId);
	PhotoBookVO getPhotoBookByNo(PhotoBookVO pbvo);
	void createPhotoBook(PhotoBookVO pbvo);
	void modifyPhotoBook(PhotoBookVO pbvo);
	void deletePhotoBook(int bookNo);
	/////////////////////////////////////////
	public List<String[]> imgList(String url, String comment);

}
