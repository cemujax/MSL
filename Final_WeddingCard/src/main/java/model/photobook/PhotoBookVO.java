package model.photobook;

import java.util.List;

import model.member.MemberVO;

import org.springframework.web.multipart.MultipartFile;

public class PhotoBookVO {
	
	private int bookNo;
	private String bookName;
	private String fileName;
	private String createDate;
	private String bookComment;
	private MemberVO memberVO;
	private List<MultipartFile> file;
	private List<String> comment;
	
	public PhotoBookVO(int bookNo, String bookName, String fileName,
			String createDate, String bookComment, MemberVO memberVO,
			List<MultipartFile> file, List<String> comment) {
		super();
		this.bookNo = bookNo;
		this.bookName = bookName;
		this.fileName = fileName;
		this.createDate = createDate;
		this.bookComment = bookComment;
		this.memberVO = memberVO;
		this.file = file;
		this.comment = comment;
	}

	public PhotoBookVO(int bookNo, String bookName, String fileName,
			String createDate, String bookComment, MemberVO memberVO) {
		super();
		this.bookNo = bookNo;
		this.bookName = bookName;
		this.fileName = fileName;
		this.createDate = createDate;
		this.bookComment = bookComment;
		this.memberVO = memberVO;
	}

	public PhotoBookVO() {
		super();
	}

	public int getBookNo() {
		return bookNo;
	}

	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getBookComment() {
		return bookComment;
	}

	public void setBookComment(String bookComment) {
		this.bookComment = bookComment;
	}

	public MemberVO getMemberVO() {
		return memberVO;
	}

	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}

	public List<MultipartFile> getFile() {
		return file;
	}

	public void setFile(List<MultipartFile> file) {
		this.file = file;
	}

	public List<String> getComment() {
		return comment;
	}

	public void setComment(List<String> comment) {
		this.comment = comment;
	}

	@Override
	public String toString() {
		return "PhotoBookVO [bookNo=" + bookNo + ", bookName=" + bookName
				+ ", fileName=" + fileName + ", createDate=" + createDate
				+ ", bookComment=" + bookComment + ", memberVO=" + memberVO
				+ ", file=" + file + ", comment=" + comment + "]";
	}
	
}
