package com.bsj.delight.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReservationController {
	
	@GetMapping("/reservation/reservation")
	public String reservation() { 
		return "reservation/reservation";
	}
	
}
