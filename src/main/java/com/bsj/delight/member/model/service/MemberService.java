package com.bsj.delight.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.RequestEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.bsj.delight.common.code.Config;
import com.bsj.delight.common.mail.MailSender;
import com.bsj.delight.member.model.dto.Member;
import com.bsj.delight.member.model.repository.MemberRepository;
import com.bsj.delight.member.validator.JoinForm;

@Service
public class MemberService {
	
	
	private MemberRepository memberRepository;
	private MailSender mailSender;
	private RestTemplate http;


	public MemberService(MemberRepository memberRepository, MailSender mailSender, RestTemplate http) {
		super();
		this.memberRepository = memberRepository;
		this.mailSender = mailSender;
		this.http = http;
	}

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

	public void authenticateByEmail(JoinForm form, String token) {
		
		MultiValueMap<String, String> body = new LinkedMultiValueMap<String, String>();
		body.add("mailTemplate", "join-auth-mail");
		body.add("userId", form.getUserId());
		body.add("persistToken", token);
		
		// RestTemplate의 기본 Content-Type : application/json
		RequestEntity<MultiValueMap<String, String>> request = 
				RequestEntity.post(Config.DOMAIN.DESC+"/mail")
				.accept(MediaType.APPLICATION_FORM_URLENCODED)
				.body(body);
		
		String htmlTxt = http.exchange(request, String.class).getBody();
		mailSender.send(form.getEmail(), "석진 : 회원가입을 축하드립니당!!", htmlTxt);
		
	}
	

}
