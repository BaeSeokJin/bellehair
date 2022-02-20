package com.bsj.delight.community.model.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class Recomments {
	private String ccmIdx; // 댓글 고유 번호
	private String cmIdx; // 댓글 고유 번호
	private String userId; // 작성자 아이디 
	private String comments; // 댓글 내용
	private Date createAt; // 댓글 생성일
}
