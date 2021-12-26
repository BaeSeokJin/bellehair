package com.bsj.delight.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bsj.delight.admin.model.repository.AdminRepository;
import com.bsj.delight.member.model.dto.Member;

@Service
public class AdminService {
	
	@Autowired
	private AdminRepository adminRepository;
	
	public List<Member> selectAllMembers(){
		return adminRepository.selectAllMembers();
	}

}
