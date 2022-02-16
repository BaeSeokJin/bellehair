package com.bsj.delight.member.controller;

import java.util.UUID;

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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bsj.delight.common.code.ErrorCode;
import com.bsj.delight.common.exception.HandlableException;
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
		//throw new HandlableException(ErrorCode.AUTHENTICATION_FAILED_ERROR); //예외테스트 코드
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
			, HttpSession session
			, RedirectAttributes redirectAttr
			) {
		ValidateResult vr = new ValidateResult();
		model.addAttribute("error", vr.getError());		
		if(errors.hasErrors()){
			vr.addErrors(errors);
			return "member/join-form"; // 후속처리로 join-form로 되돌려 놓는다  
		}
		String token = UUID.randomUUID().toString(); //token 생성
		session.setAttribute("persistUser", form);
		session.setAttribute("persistToken", token);
		memberService.authenticateByEmail(form, token); //이메일에 의한 인증 메서드
		redirectAttr.addFlashAttribute("message", "얏호. 이메일이 발송되었습니다.");
		return "redirect:/";
	}

	// 회원가입 - join-impl
	@GetMapping("join-impl/{token}")
	public String joinImpl(@PathVariable String token
			, @SessionAttribute(value = "persistToken", required = false) String persistToken
			, @SessionAttribute(value = "persistUser", required = false) JoinForm form
			, HttpSession session
			, RedirectAttributes redirectAttrs) {
		if(!token.equals(persistToken)) {
			throw new HandlableException(ErrorCode.AUTHENTICATION_FAILED_ERROR);
		}
		memberService.insertMember(form);
		redirectAttrs.addFlashAttribute("message", "짜잔! 회원가입을 환영합니다! 로그인해주세요!");
		session.removeAttribute("persistToken");
		session.removeAttribute("persistUser"); // 세션 지우는거 또 까먹냐 ㅠㅠ난 바보
		return "redirect:/member/login-form";
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
		return "redirect:/";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.removeAttribute("authentication");
		return "redirect:/";
	}
	
	// 마이페이지 - 이동
	@GetMapping("mypage")
	public void mypage() {}
	
	
}
