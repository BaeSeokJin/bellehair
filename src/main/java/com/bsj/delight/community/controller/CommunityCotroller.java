package com.bsj.delight.community.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bsj.delight.community.model.dto.Board;
import com.bsj.delight.community.model.service.CommunityService;
import com.bsj.delight.member.model.dto.Member;

@Controller
public class CommunityCotroller { 

	private CommunityService communityService;
	
	public CommunityCotroller(CommunityService communityService) {
		super();
		this.communityService = communityService;
	}
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	// hairForum 페이지로 들어가기	
	@GetMapping("/community/hairForum")
	public String hairForum(Board board
							, Model model) {
		
		List<Board> list = communityService.getBoardList(board);
		logger.info("list :" + list);
		model.addAttribute("list", list);
		
		return "community/hairForum";
	}
	
	// hairForumDetail 페이지로 들어가기
	@GetMapping("/community/hairForumDetail")
	public String hairForumDetail() {
		return "community/hairForumDetail";
	}
	
	// hairForumWrite 페이지로 들어가기
	@GetMapping("/community/hairForumWrite")
	public String hairForumWrite() {
		return "community/hairForumWrite";
	}
	
	// hairForumWrite 페이지에서 글 작성
	@PostMapping("/community/hairForumWrite")
	public String reportInsertPost(Model model
								,@ModelAttribute Board board
								,HttpSession session) {
		
		Member member = (Member) session.getAttribute("authentication");
		
		String userCode = member.getUserCode();
		String userId = member.getUserId();
		
		Map<String, Object> commandMap = new HashMap<String, Object>();
		commandMap.put("title", board.getTitle());
		commandMap.put("content", board.getContent());
		commandMap.put("userCode", userCode);
		commandMap.put("userId", userId);
		
		//commandMap.put(userCode, board.getUserCode());
		
		
		//logger.info("commandMap : " + commandMap);
		//logger.info("model : " + model);
		//System.out.println("model : " + model);
		
		communityService.reportInsertPost(commandMap);
		
		return "redirect:/community/hairForum";
	}
	
	// event 페이지로 이동
	@GetMapping("/community/event")
	public String event() {
		return "community/event";
	}
	// notice 페이지로 이동
	@GetMapping("/community/notice")
	public String notice() {
		return "community/notice";
	}
	
	
}
