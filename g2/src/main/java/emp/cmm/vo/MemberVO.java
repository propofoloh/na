package emp.cmm.vo;

import java.util.Date;

public class MemberVO {


	private String userId;
	private String userPwd;
	private String userName;
	private Date userBirthday;
	private String hpNum;
	private String userEmail;

	public String getUserName() {
		return userName;
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




	public String getHpNum() {
		return hpNum;
	}




	public void setHp_Num(String hpNum) {
		this.hpNum = hpNum;
	}




	public String getUserEmail() {
		return userEmail;
	}




	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	
}