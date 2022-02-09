package com.bsj.delight.member.model.dto;

import java.sql.Date;

import lombok.Data;

@Data
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
}
