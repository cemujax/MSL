package model.post;

import model.member.MemberVO;

public class PostCommentVO {

	private int commentNo;
	private String content;
	private String writeDate;
	private MemberVO memberVO;
	private PostVO postVO;
	
	public PostCommentVO() {}
	
	public PostCommentVO(int commentNo, String content, String writeDate,
			MemberVO memberVO) {
		super();
		this.commentNo = commentNo;
		this.content = content;
		this.writeDate = writeDate;
		this.memberVO = memberVO;
	}

	public PostCommentVO(int commentNo, String content, String writeDate,
			PostVO postVO) {
		super();
		this.commentNo = commentNo;
		this.content = content;
		this.writeDate = writeDate;
		this.postVO = postVO;
	}

	public PostCommentVO(int commentNo, String content, String writeDate,
			MemberVO memberVO, PostVO postVO) {
		super();
		this.commentNo = commentNo;
		this.content = content;
		this.writeDate = writeDate;
		this.memberVO = memberVO;
		this.postVO = postVO;
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
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

	public PostVO getPostVO() {
		return postVO;
	}

	public void setPostVO(PostVO postVO) {
		this.postVO = postVO;
	}

	@Override
	public String toString() {
		return "PostComment [commentNo=" + commentNo + ", content=" + content
				+ ", writeDate=" + writeDate + ", memberVO=" + memberVO
				+ ", postVO=" + postVO + "]";
	}
	
}
