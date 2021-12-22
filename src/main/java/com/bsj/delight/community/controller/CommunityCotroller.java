package com.bsj.delight.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CommunityCotroller { 

	@GetMapping("/community/hairForum")
	public String hairForum() {
		return "community/hairForum";
	}
	
	@GetMapping("/community/hairForumDetail")
	public String hairForumDetail() {
		return "community/hairForumDetail";
	}
	
	@GetMapping("/community/event")
	public String event() {
		return "community/event";
	}
	
	@GetMapping("/community/notice")
	public String notice() {
		return "community/notice";
	}
	
	
}
