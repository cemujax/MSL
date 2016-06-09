package model.card;

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
	private int cardNo;		// card_no
	private String template;
	private String cardDate;	// card_date
	private String hallName;	// hall_name
	private String hallLocation;	// hall_location
	private String hallTel;		// hall_tel
	private String groomTel;	// groom_tel
	private String brideTel;	// bride_tel
	// reference
	private MemberVO memberVO;
	private PhotoBookVO photobookVO;
	
	private String url;
	
	
	public CardVO() {}
	
	

	public CardVO(int cardNo, String template, String cardDate,
			String hallName, String hallLocation, String hallTel,
			String groomTel, String brideTel, MemberVO memberVO,
			PhotoBookVO photobookVO, String url) {
		super();
		this.cardNo = cardNo;
		this.template = template;
		this.cardDate = cardDate;
		this.hallName = hallName;
		this.hallLocation = hallLocation;
		this.hallTel = hallTel;
		this.groomTel = groomTel;
		this.brideTel = brideTel;
		this.memberVO = memberVO;
		this.photobookVO = photobookVO;
		this.url = url;
	}



	public CardVO(int cardNo, String template, String cardDate,
			String hallName, String hallLocation, String hallTel,
			String groomTel, String brideTel) {
		super();
		this.cardNo = cardNo;
		this.template = template;
		this.cardDate = cardDate;
		this.hallName = hallName;
		this.hallLocation = hallLocation;
		this.hallTel = hallTel;
		this.groomTel = groomTel;
		this.brideTel = brideTel;
	}


	public CardVO(int cardNo, String template, String cardDate,
			String hallName, String hallLocation, String hallTel,
			String groomTel, String brideTel, PhotoBookVO photobookVO) {
		super();
		this.cardNo = cardNo;
		this.template = template;
		this.cardDate = cardDate;
		this.hallName = hallName;
		this.hallLocation = hallLocation;
		this.hallTel = hallTel;
		this.groomTel = groomTel;
		this.brideTel = brideTel;
		this.photobookVO = photobookVO;
	}

	public CardVO(int cardNo, String template, String cardDate,
			String hallName, String hallLocation, String hallTel,
			String groomTel, String brideTel, MemberVO memberVO) {
		super();
		this.cardNo = cardNo;
		this.template = template;
		this.cardDate = cardDate;
		this.hallName = hallName;
		this.hallLocation = hallLocation;
		this.hallTel = hallTel;
		this.groomTel = groomTel;
		this.brideTel = brideTel;
		this.memberVO = memberVO;
	}

	public CardVO(int cardNo, String template, String cardDate,
			String hallName, String hallLocation, String hallTel,
			String groomTel, String brideTel, MemberVO memberVO,
			PhotoBookVO photobookVO) {
		super();
		this.cardNo = cardNo;
		this.template = template;
		this.cardDate = cardDate;
		this.hallName = hallName;
		this.hallLocation = hallLocation;
		this.hallTel = hallTel;
		this.groomTel = groomTel;
		this.brideTel = brideTel;
		this.memberVO = memberVO;
		this.photobookVO = photobookVO;
	}

	public int getCardNo() {
		return cardNo;
	}

	public void setCardNo(int cardNo) {
		this.cardNo = cardNo;
	}

	public String getTemplate() {
		return template;
	}

	public void setTemplate(String template) {
		this.template = template;
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

	public String getGroomTel() {
		return groomTel;
	}

	public void setGroomTel(String groomTel) {
		this.groomTel = groomTel;
	}

	public String getBrideTel() {
		return brideTel;
	}

	public void setBrideTel(String brideTel) {
		this.brideTel = brideTel;
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



	@Override
	public String toString() {
		return "CardVO [cardNo=" + cardNo + ", template=" + template
				+ ", cardDate=" + cardDate + ", hallName=" + hallName
				+ ", hallLocation=" + hallLocation + ", hallTel=" + hallTel
				+ ", groomTel=" + groomTel + ", brideTel=" + brideTel
				+ ", memberVO=" + memberVO + ", photobookVO=" + photobookVO
				+ "]";
	}
}
