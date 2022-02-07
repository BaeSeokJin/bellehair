package com.bsj.delight.member.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bsj.delight.common.validator.ValidateResult;
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
		webDataBinder.addValidators(joinFormValidator); //데이터바인더에 벨리데이터 추가
	}

	// 회원가입 - 페이지 이동
	@GetMapping("join-form")
	public void joinForm(Model model) {
		model.addAttribute(new JoinForm()).addAttribute("error", new ValidateResult().getError());
		//체인이라서 한줄로 가능
	}
	
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
			, Model model
			) {
		
		ValidateResult vr = new ValidateResult();
		model.addAttribute("error", vr.getError());		
		
		if(errors.hasErrors()){
			vr.addErrors(errors);
			return "member/join-form"; // 후속처리로 join-form로 되돌려 놓는다  
		}
		
		memberService.insertMember(form);
		return "index";
	}
	
	
	// 로그인 - 페이지로 이동
	@GetMapping("login-form")
	public void loginForm() {}
	
	// 로그인  - 실행(세션등록)
	@PostMapping("login")
	public String login(Member member, HttpSession session, RedirectAttributes redirctAttr) {
		Member certifiedUser = memberService.authenticateUser(member);
		
		if (certifiedUser == null) {
			redirctAttr.addFlashAttribute("message", "아이디나 비빌번호가 정확하지 않습니다.");
			return "redirect:/member/login-form";
		}
		
		System.out.println(member);
		System.out.println(certifiedUser);
		session.setAttribute("authentication", certifiedUser);
		return "redirect:/member/mypage";
	}
	
	// 마이페이지 - 이동
	@GetMapping("mypage")
	public void mypage() {}
	
	
}
