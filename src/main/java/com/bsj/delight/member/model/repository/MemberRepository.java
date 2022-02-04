package com.bsj.delight.member.model.repository;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bsj.delight.member.model.dto.Member;
import com.bsj.delight.member.validator.JoinForm;

@Mapper
public interface MemberRepository {

	// 회원가입 하기
	void insertMember(JoinForm form);

	// 로그인에 필요한 세션 불러오기
	Member authenticateUser(Member member);

	// 아이디 체크 기능
	@Select("select * from member where user_id = #{userId}")
	Member selectMemberByUserId(String userId);
	
}
