package com.bsj.delight.member.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bsj.delight.member.model.dto.Member;
import com.bsj.delight.member.model.service.MemberService;
import com.bsj.delight.member.validator.JoinForm;
import com.bsj.delight.member.validator.JoinFormValidator;

@Controller
@RequestMapping("member")
public class MemberController {

	//MemberService 선언
	private MemberService memberService;
	//JoinFormValidator 선언
	private JoinFormValidator joinFormValidator;
	
	public MemberController(MemberService memberService, JoinFormValidator joinFormValidator) {
		super();
		this.memberService = memberService;
		this.joinFormValidator = joinFormValidator;
	}
	
	// model의 속성 중에 속성명이 joinForm인 속성이 있는 경우 initBinder 메서드 실행
	@InitBinder(value = "joinForm") 
	public void initBinder(WebDataBinder webDataBinder) {
		webDataBinder.addValidators(joinFormValidator);
	}

	// 회원가입 - 페이지 이동
	@GetMapping("join-form")
	public void joinForm() {}
	
	// 회원가입 - 아이디 체크
	@GetMapping("id-check")
	@ResponseBody // @ResponseBody가 있을 때에는 리턴할 수 있는 게 많아진다. 리턴하는 값이 응답값에 담긴다.
	public String idCheck(String userId) {
		Member member = memberService.selectMemberByUserId(userId);
		if (member == null) {
			return "available";
		} else {
			return "disable";
		}
	}
	
	// 회원가입 - 실행
	@PostMapping("join")
	public String join(@Validated JoinForm form
			, Errors errors // 반드시 검증될 객체 바로 뒤에 작성
			) {
		
		if(errors.hasErrors()){
			return "member/join-form";
		}
		
		memberService.insertMember(form);
		return "index";
	}
	
	
	// 로그인 - 페이지로 이동
	@GetMapping("login-form")
	public void loginForm() {}
	
	// 로그인  - 실행(세션등록)
	@PostMapping("login")
	public String login(Member member, HttpSession session) {
		Member certifiedUser = memberService.authenticateUser(member);
		System.out.println(member);
		System.out.println(certifiedUser);
		session.setAttribute("authentication", certifiedUser);
		return "redirect:/member/mypage";
	}
	
	// 마이페이지 - 이동
	@GetMapping("mypage")
	public void mypage() {}
	
	
}
