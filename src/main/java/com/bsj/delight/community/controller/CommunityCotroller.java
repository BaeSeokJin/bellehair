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
import com.bsj.delight.community.model.dto.Comments;
import com.bsj.delight.community.model.dto.Recomments;
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

	//================================================================
	// 						게시글 관련 컨트롤러
	//================================================================
	
	// 글목록	
	@GetMapping("/community/hairForum")
	public String hairForum(Board board
							, Model model) {
		List<Board> list = communityService.getBoardList(board);
		model.addAttribute("list", list);
		return "community/hairForum";
	}
	
	// 게시글 상세보기
	@GetMapping("/community/hairForumDetail")
	public ModelAndView hairForumDetail(@RequestParam String bdIdx, Comments comments, Recomments recomments){
		ModelAndView mv = new ModelAndView("/community/hairForumDetail");
		//상세글 정보 보여주기
		Board board = communityService.hairForumDetail(bdIdx);
		mv.addObject("board", board); 
		//댓글 목록 보여주기
		List<Comments> commentsList = communityService.geCommentsList(comments,bdIdx); 
		mv.addObject("commentsList", commentsList);
		return mv;
	}
	
	// 글삭제
	@GetMapping("/community/removePosting")
	public String removePosting(@RequestParam String bdIdx) {
		System.out.println("삭제 버튼 클릭 완료!! : " + bdIdx);
		communityService.removePosting(bdIdx);
		return "redirect:/community/hairForum";
	}
	
	// 글수정(폼이동)
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

	// 글수정(폼등록)
	@PostMapping("/community/modifyPosting")
	public String modifyPostingEnd(Board board) {
		System.out.println("=======================글수정(폼등록)=======================");
		System.out.println("board의 값은? : " + board);
		String bdIdx = board.getBdIdx();
		String title = board.getTitle();
		String content = board.getContent();
		System.out.println(bdIdx);
		System.out.println(title);
		System.out.println(content);
		System.out.println("=======================글수정(폼등록)=======================");
		communityService.modifyPostingEnd(board);
		//communityService.modifyPostingEnd(board);
		return "redirect:/community/hairForum";
	}
	
	// 글쓰기(폼이동)
	@GetMapping("/community/hairForumWrite")
	public String hairForumWrite() {
		return "community/hairForumWrite";
	}
	
	// 글쓰기(폼등록)
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
	
	
	//================================================================
	// 						댓글 관련 컨트롤러
	//================================================================
	
	//댓글 등록
	@PostMapping("/community/commentsWrite") 
	public ModelAndView commentsWritePost(String contents, String bdIdx,
										 HttpSession session) {
		
		ModelAndView mv = new ModelAndView("redirect:/community/hairForumDetail?bdIdx="+bdIdx);
		Member member = (Member) session.getAttribute("authentication");
		String userId = member.getUserId();
		System.out.println(contents.getClass().getName());
		System.out.println(bdIdx.getClass().getName());
		System.out.println(userId.getClass().getName());
		communityService.commentsWritePost(contents, bdIdx, userId);
		
		return mv;
	}
	
	//댓글 삭제
	@PostMapping("/community/commentsRemove") 
	public String commentsRemove(String cmIdx, String bdIdx) {
		System.out.println("게시글 정보 : " + bdIdx);
		System.out.println("댓글 정보 : " + cmIdx);
		communityService.commentsRemove(cmIdx);
		return "redirect:/community/hairForumDetail?bdIdx=" + bdIdx;
	}
	
	
}
