package com.bsj.delight.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bsj.delight.member.model.dto.Member;
import com.bsj.delight.member.model.repository.MemberRepository;
import com.bsj.delight.member.validator.JoinForm;

@Service
public class MemberService {
	
	@Autowired
	private MemberRepository memberRepository;
	// MemberRepository를 받음.
	// @Autowired를 사용하여 의존성 주입 받기

	// 회원가입 하기
	public void insertMember(JoinForm form) {
		memberRepository.insertMember(form);
	}

	// 로그인에 필요한 세션 불러오기
	public Member authenticateUser(Member member) {
		return memberRepository.authenticateUser(member);
	}

	public Member selectMemberByUserId(String userId) {
		return memberRepository.selectMemberByUserId(userId);
	}
	

}
