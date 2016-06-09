package model.card;

/*
 content varchar2(500) not null, 
 guest varchar2(20), 
 write_date date not null, 
 card_no number(10) not null, 
 foreign key (card_no) references card(card_no) on delete cascade  
 */
public class CardcommentVO {
	private String content;
	private String guest;
	private String writeDate; // write_date
	private String password;
	// reference
	private CardVO cardVO;

	public CardcommentVO() {
		super();
	}

	public CardcommentVO(String content, String guest, String writeDate,
			String password) {
		super();
		this.content = content;
		this.guest = guest;
		this.writeDate = writeDate;
		this.password = password;
	}

	public CardcommentVO(String content, String guest, String writeDate,
			String password, CardVO cardVO) {
		super();
		this.content = content;
		this.guest = guest;
		this.writeDate = writeDate;
		this.password = password;
		this.cardVO = cardVO;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getGuest() {
		return guest;
	}

	public void setGuest(String guest) {
		this.guest = guest;
	}

	public String getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}

	public CardVO getCardVO() {
		return cardVO;
	}

	public void setCardVO(CardVO cardVO) {
		this.cardVO = cardVO;
	}

	@Override
	public String toString() {
		return "CardcommentVO [content=" + content + ", guest=" + guest
				+ ", writeDate=" + writeDate + ", password=" + password
				+ ", cardVO=" + cardVO + "]";
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}