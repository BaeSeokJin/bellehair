package com.bsj.delight.member.model.dto;

import java.sql.Date;

public class Member {
	
	private String userCode; 
	private String userId; 
	private String name; 
	private String nickname; 
	private String password;
	private String email;
	private String tell;
	private String grade;	
	private Date regDate;
	private int isLeave;
	
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
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
	public String getTell() {
		return tell;
	}
	public void setTell(String tell) {
		this.tell = tell;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getIsLeave() {
		return isLeave;
	}
	public void setIsLeave(int isLeave) {
		this.isLeave = isLeave;
	}
	
	
	@Override
	public String toString() {
		return "Member [userCode=" + userCode + ", userId=" + userId + ", name=" + name + ", nickname=" + nickname
				+ ", password=" + password + ", email=" + email + ", tell=" + tell + ", grade=" + grade + ", regDate="
				+ regDate + ", isLeave=" + isLeave + "]";
	}

	
	
	
}
