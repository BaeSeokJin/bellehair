package com.bsj.delight.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bsj.delight.member.model.dto.Member;
import com.bsj.delight.member.model.repository.MemberRepository;

@Service
public class MemberService {
	
	@Autowired
	private MemberRepository memberRepository;
	// MemberRepository를 받음.
	// @Autowired를 사용하여 의존성 주입 받기

	// 회원가입 하기
	public void insertMember(Member member) {
		memberRepository.insertMember(member);
	}
	

}
