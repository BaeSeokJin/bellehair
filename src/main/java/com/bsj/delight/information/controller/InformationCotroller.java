package com.bsj.delight.information.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InformationCotroller { 
	
	@GetMapping("/information/aboutDelight")
	public String aboutDelight() {
		return "information/aboutDelight";
	}
	
	@GetMapping("/information/address")
	public String address() {
		return "information/address";
	}
	
	@GetMapping("/information/price")
	public String price() {
		return "information/price";
	}
	
}
