package emp.cmm.vo;

import java.util.Date;

public class MemberVO {

	private int memberIdx;
	private String userId;
	private String userPwd;
	private String userName;
	private Date userBirthday;
	private String hp_Num;
	private String userEmail;
	private String userAuth;
	private Date regDate;
	private Date modDate;
	private String DelYN;
	

	

	public int getMemberIdx() {
		return memberIdx;
	}
 



	public void setMemberIdx(int memberIdx) {
		this.memberIdx = memberIdx;
	}




	public String getUserId() {
		return userId;
	}




	public void setUserId(String userId) {
		this.userId = userId;
	}




	public String getUserPwd() {
		return userPwd;
	}




	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}




	public String getUserNAME() {
		return userName;
	}




	public void setUserName(String userName) {
		this.userName = userName;
	}




	public Date getUserBirthday() {
		return userBirthday;
	}




	public void setUserBirthday(Date userBirthday) {
		this.userBirthday = userBirthday;
	}




	public String getHp_Num() {
		return hp_Num;
	}




	public void setHp_Num(String hp_Num) {
		this.hp_Num = hp_Num;
	}




	public String getUserEmail() {
		return userEmail;
	}




	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}




	public String getUserAuth() {
		return userAuth;
	}




	public void setUserAuth(String userAuth) {
		this.userAuth = userAuth;
	}




	public Date getRegDate() {
		return regDate;
	}




	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}




	public Date getModDate() {
		return modDate;
	}




	public void setModDate(Date modDate) {
		this.modDate = modDate;
	}




	public String getDelYN() {
		return DelYN;
	}




	public void setDelYN(String delYN) {
		DelYN = delYN;
	}




	@Override
	public String toString() {
		return "MemberVO [userId=" + userId + ", userPass=" + userPwd + ", userName=" +userName + ", regDate="
				+ regDate + "]";
	}

	
}