package com.bsj.delight.member.model.repository;

import org.apache.ibatis.annotations.Mapper;

import com.bsj.delight.member.model.dto.Member;

@Mapper
public interface MemberRepository {

	// 회원가입 하기
	void insertMember(Member member);
	
}
