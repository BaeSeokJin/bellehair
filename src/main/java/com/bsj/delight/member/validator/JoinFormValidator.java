package com.bsj.delight.member.validator;

import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.bsj.delight.member.model.repository.MemberRepository;

@Component
public class JoinFormValidator implements Validator {

	
	private final MemberRepository memberRepository;
	
	public JoinFormValidator(MemberRepository memberRepository) {
		this.memberRepository = memberRepository;
	}
	
	@Override
	public boolean supports(Class<?> clazz) {
		return JoinForm.class.equals(clazz); // 우리가 지정한 클래스와 같은 클래스만 벨리데이터가 동작이 되도록 설정
	}

	@Override
	public void validate(Object target, Errors errors) {
		// target을 JoinForm form로 다운캐스팅 한다.
		// 컨트롤러로 넘어가기 전에 먼저 validate가 작동한다.
		JoinForm form = (JoinForm) target;
		
		//1. 아이디 존재유무
		if (memberRepository.selectMemberByUserId(form.getUserId()) != null) {
			errors.rejectValue("userId", "error-userId", "Validator : 이미 존재하는 아이디입니다.");
		}
		
		//2. 비밀번호가 8글자 이상, 숫자 영문자 특수문자 조합인지 확인
		boolean valid = Pattern.matches("(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[^a-zA-Zㄱ-힣0-9]).{8,}", form.getPassword());
		if(!valid) {
			errors.rejectValue("password", "error-password", "Validator : 비밀번호는 8글자 이상의 숫자+영문자+특수문자 조합입니다.");
		}
		
		//3. 휴대폰 존재 유무
		valid = Pattern.matches("^\\d{9,11}$", form.getTell());
		if(!valid) {
			errors.rejectValue("tell", "error-tell", "Validator : 전화번호는 9~11자리의 숫자입니다.");
		}
		
		
	}

}
