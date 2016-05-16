package domain;

import java.io.Serializable;
/**
 * 作者：李涛，2016-4-4
 * 建立账户信息
 *
 */
public class Account implements Serializable{
	private static final long serialVersionUID = 8751282105532159742L;
	
	//建立用户信息
	
	private String username;
	private int userID;
	private String password;
	private String gender;
	private String email;
	private String phone;
	private String pwdQuestion;
	private String pwdAnswer;
	private boolean status;
	
	//get和set方法
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public int getUserID() {
		return userID;
	}
	
	public void setUserID(int userID) {
		this.userID = userID;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPwdQuestion() {
		return pwdQuestion;
	}

	public void setPwdQuestion(String pwdQuestion) {
		this.pwdQuestion = pwdQuestion;
	}

	public String getPwdAnswer() {
		return pwdAnswer;
	}

	public void setPwdAnswer(String pwdAnswer) {
		this.pwdAnswer = pwdAnswer;
	}		
	
}
