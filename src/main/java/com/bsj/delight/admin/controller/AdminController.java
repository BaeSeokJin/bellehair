package com.bsj.delight.admin.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bsj.delight.admin.model.service.AdminService;
import com.bsj.delight.member.model.dto.Member;

@Controller
@RequestMapping("admin")
public class AdminController {

	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("memberList")
	public void memberList(Model model) {
		List<Member> members = adminService.selectAllMembers();
		logger.debug(members.toString());
		model.addAttribute("members",members);
	}
}
