package com.bsj.delight.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.bsj.delight.member.model.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("/member/join-form")
	public String searchPassword() { 
		return "member/join-form";
	}
	
	@GetMapping("/member/login-form")
	public String searchPassworsd() { 
		return "member/login-form";
	}
	
}
