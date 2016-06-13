package model.post;

import model.member.MemberVO;

public class ReviewCommentVO {
	private String content;
	private String writeDate;
	private MemberVO memberVO;
	
	public ReviewCommentVO(String content, String writeDate, MemberVO memberVO) {
		super();
		this.content = content;
		this.writeDate = writeDate;
		this.memberVO = memberVO;
	}

	public ReviewCommentVO(String content, String writeDate) {
		super();
		this.content = content;
		this.writeDate = writeDate;
	}

	public ReviewCommentVO() {
		super();
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}

	public MemberVO getMemberVO() {
		return memberVO;
	}

	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}

	@Override
	public String toString() {
		return "ReviewCommentVO [content=" + content + ", writeDate="
				+ writeDate + ", memberVO=" + memberVO + "]";
	}

}
