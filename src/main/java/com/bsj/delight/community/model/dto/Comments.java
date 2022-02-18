package com.bsj.delight.community.model.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class Comments {
	private String cmIdx; // 댓글 고유 번호
	private String bdIdx; // 게시글 고유번호
	private String comments; // 댓글 내용
	private Date createAt; // 댓글 생성일
	private Date modifiedAt; // 수정일자
	private String userId; // 작성자 아이디 
	
}
