package com.bsj.delight.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bsj.delight.member.model.dto.Member;
import com.bsj.delight.member.model.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	// 회원가입 페이지로 이동
	@GetMapping("join-form")
	public void joinForm() {}
	
	// 회원가입 하기 
	@PostMapping("join")
	public String join(Member member) {
		System.out.println(member);
		memberService.insertMember(member);
		return "index";
	}
	
	// 로그인 페이지로 이동
	@GetMapping("login-form")
	public void loginForm() {}
	
	
	
	// 마이페이지로 이동
	@GetMapping("mypage")
	public void mypage() {}
	
}
