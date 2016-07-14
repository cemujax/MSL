package model.card;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import model.member.MemberVO;
import model.photobook.PhotoBookVO;

/*
 card_no number(10) primary key, 
 template varchar2(50), 
 card_date date not null, 
 hall_name varchar2(50), 
 hall_location varchar2(100), 
 hall_tel varchar2(20), 
 groom_tel varchar2(30), 
 bride_tel varchar2(30),  
 member_id varchar2(50), 
 book_no number(10), 
 foreign key (member_id) references member(member_id) on delete cascade

 // foreign key (book_no) references photobook(book_no) on delete no action >> NOT WORKING!!
 */
public class CardVO {
	private int cardNo; // card_no
	private String cardDate; // card_date
	private String hallName; // hall_name
	private String hallLocation; // hall_location
	private String hallTel; // hall_tel
	private String groomInfo; // groom_tel, groom_name
	private String brideInfo; // bride_tel, bride_name
	// reference
	private MemberVO memberVO;
	private PhotoBookVO photobookVO;
	private CardTemplateVO cardTemplateVO;
	
	private String url;
	private String mainImage;
	private String cardContext;
	private MultipartFile imgFile;
	private MultipartFile imgGroom;
	private MultipartFile imgBride;
	
	public CardVO() {}

	public CardVO(int cardNo,  String cardDate,
			String hallName, String hallLocation, String hallTel,
			String groomInfo, String brideInfo, MemberVO memberVO,
			PhotoBookVO photobookVO, String url, String mainImage,
			String cardContext, CardTemplateVO cardTemplateVO,  MultipartFile imgFile, MultipartFile imgGroom,
			MultipartFile imgBride) {
		super();
		this.cardNo = cardNo;
		this.cardDate = cardDate;
		this.hallName = hallName;
		this.hallLocation = hallLocation;
		this.hallTel = hallTel;
		this.groomInfo = groomInfo;
		this.brideInfo = brideInfo;
		this.memberVO = memberVO;
		this.photobookVO = photobookVO;
		this.url = url;
		this.mainImage = mainImage;
		this.cardContext = cardContext;
		this.imgFile = imgFile;
		this.imgGroom = imgGroom;
		this.imgBride = imgBride;
		this.cardTemplateVO = cardTemplateVO;
	}

	public String getMainImage() {
		return mainImage;
	}


	public MultipartFile getImgGroom() {
		return imgGroom;
	}

	public void setImgGroom(MultipartFile imgGroom) {
		this.imgGroom = imgGroom;
	}

	public MultipartFile getImgBride() {
		return imgBride;
	}

	public void setImgBride(MultipartFile imgBride) {
		this.imgBride = imgBride;
	}

	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
	}

	public MultipartFile getImgFile() {
		return imgFile;
	}

	public void setImgFile(MultipartFile imgFile) {
		this.imgFile = imgFile;
	}

	public int getCardNo() {
		return cardNo;
	}

	public void setCardNo(int cardNo) {
		this.cardNo = cardNo;
	}


	public CardTemplateVO getCardTemplateVO() {
		return cardTemplateVO;
	}

	public void setCardTemplateVO(CardTemplateVO cardTemplateVO) {
		this.cardTemplateVO = cardTemplateVO;
	}

	public String getCardDate() {
		return cardDate;
	}

	public void setCardDate(String cardDate) {
		this.cardDate = cardDate;
	}

	public String getHallName() {
		return hallName;
	}

	public void setHallName(String hallName) {
		this.hallName = hallName;
	}

	public String getHallLocation() {
		return hallLocation;
	}

	public void setHallLocation(String hallLocation) {
		this.hallLocation = hallLocation;
	}

	public String getHallTel() {
		return hallTel;
	}

	public void setHallTel(String hallTel) {
		this.hallTel = hallTel;
	}

	public String getGroomInfo() {
		return groomInfo;
	}

	public void setGroomInfo(String groomInfo) {
		this.groomInfo = groomInfo;
	}

	public String getBrideInfo() {
		return brideInfo;
	}

	public void setBrideInfo(String brideInfo) {
		this.brideInfo = brideInfo;
	}

	public MemberVO getMemberVO() {
		return memberVO;
	}

	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}

	public PhotoBookVO getPhotobookVO() {
		return photobookVO;
	}

	public void setPhotobookVO(PhotoBookVO photobookVO) {
		this.photobookVO = photobookVO;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getCardContext() {
		return cardContext;
	}

	public void setCardContext(String cardContext) {
		this.cardContext = cardContext;
	}

	@Override
	public String toString() {
		return "CardVO [cardNo=" + cardNo + ", cardDate=" + cardDate
				+ ", hallName=" + hallName + ", hallLocation=" + hallLocation
				+ ", hallTel=" + hallTel + ", groomInfo=" + groomInfo
				+ ", brideInfo=" + brideInfo + ", memberVO=" + memberVO
				+ ", photobookVO=" + photobookVO + ", cardTemplateVO="
				+ cardTemplateVO + ", url=" + url + ", mainImage=" + mainImage
				+ ", cardContext=" + cardContext + ", imgFile=" + imgFile
				+ ", imgGroom=" + imgGroom + ", imgBride=" + imgBride + "]";
	}

}