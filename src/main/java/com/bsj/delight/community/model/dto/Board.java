package com.bsj.delight.community.model.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class Board {
	private String bdIdx; // 게시글 고유번호
	private String userCode; // 작성한 회원 고유 번호 (시퀀스)
	private String category; // 카테고리 
	private String title; // 게시글 제목
	private String content; // 게시글 내용
	private Date createAt; // 등록일자
	private Date modifiedAt; // 수정일자
	private String isDel; // 게시글 블라인드 여부
	private String good; // 추천수 
	private String bad; // 비추천수 
	private String userId; // 작성자 아이디 
	
}
