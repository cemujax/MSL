package model.member;

public class MemberVO {
	private String memberId;
	private String password;
	private String name;
	private String phoneNumber;
	
	public MemberVO() {}
	
	public MemberVO(String memberId, String password) {
		super();
		this.memberId = memberId;
		this.password = password;
	}

	public MemberVO(String memberId, String password, String name, String phoneNumber) {
		super();
		this.memberId = memberId;
		this.password = password;
		this.name = name;
		this.phoneNumber = phoneNumber;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", password=" + password
				+ ", name=" + name + ", phoneNumber=" + phoneNumber + "]";
	}
	
}
