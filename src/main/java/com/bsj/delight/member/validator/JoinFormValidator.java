package com.bsj.delight.member.validator;

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
		return JoinForm.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		JoinForm form = (JoinForm) target;
	}

}
