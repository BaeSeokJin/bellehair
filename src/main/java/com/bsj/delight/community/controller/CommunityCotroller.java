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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView hairForumDetail(@RequestParam String bdIdx){
		
		ModelAndView mv = new ModelAndView("/community/hairForumDetail");
		Board board = communityService.hairForumDetail(bdIdx);
		mv.addObject("board", board);
		System.out.println("bdIdx값은 잘 받아오니? : " + bdIdx);
		System.out.println("board값은 잘 받아오니? : " + board);
		System.out.println("mv의 값은?(syso) : " + mv);
		logger.info("mv의 값은?(info) : " + mv);
		System.out.println("=======================절취선=======================");
		return mv;
	}
	
	// 게시글 삭제하기
	@GetMapping("/community/removePosting")
	public String removePosting(@RequestParam String bdIdx) {
		System.out.println("삭제 버튼 클릭 완료!! : " + bdIdx);
		communityService.removePosting(bdIdx);
		return "redirect:/community/hairForum";
	}
	
	// 게시글 수정하기(페이지 이동)
	@GetMapping("/community/modifyPosting")
	public ModelAndView modifyPosting(@RequestParam String bdIdx) {
		ModelAndView mv = new ModelAndView("/community/hairForumModify");
		Board board = communityService.hairForumDetail(bdIdx);
		
		String title = board.getTitle();
		String content = board.getContent();
		System.out.println(bdIdx);
		System.out.println(title);
		System.out.println(content);
		mv.addObject("board", board);
		return mv;
	}

	// 게시글 수정하기(수정 완료 클락)
	@PostMapping("/community/modifyPosting")
	public ModelAndView modifyPostingEnd(@RequestParam(value="bdIdx", required=false) String bdIdx) {
		ModelAndView mv = new ModelAndView("redirect:/community/hairForumDetail");
		Board board = communityService.hairForumDetail(bdIdx);
		String title = board.getTitle();
		String content = board.getContent();
		bdIdx = (String)bdIdx;
		System.out.println(bdIdx);
		System.out.println(title);
		System.out.println(content);
		communityService.modifyPostingEnd(bdIdx, title, content);
		return mv;
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
