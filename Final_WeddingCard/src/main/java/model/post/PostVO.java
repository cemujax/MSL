package model.post;

import model.member.MemberVO;

public class PostVO {
	private int postNo;
	private String title;
	private String content;
	private String writeDate;
	private String kind;
	private MemberVO memberVO;
	
	public PostVO() {}
	
	public PostVO(int postNo, String title, String content, String writeDate,
			String kind) {
		super();
		this.postNo = postNo;
		this.title = title;
		this.content = content;
		this.writeDate = writeDate;
		this.kind = kind;
	}

	public PostVO(int postNo, String title, String content, String writeDate,
			String kind, MemberVO memberVO) {
		super();
		this.postNo = postNo;
		this.title = title;
		this.content = content;
		this.writeDate = writeDate;
		this.kind = kind;
		this.memberVO = memberVO;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public MemberVO getMemberVO() {
		return memberVO;
	}

	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}

	@Override
	public String toString() {
		return "PostVO [postNo=" + postNo + ", title=" + title + ", content="
				+ content + ", writeDate=" + writeDate + ", kind=" + kind
				+ ", memberVO=" + memberVO + "]";
	}
}
