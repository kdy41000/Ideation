package com.mvc.ideation.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(value = "/section.do",method = RequestMethod.GET)
	public String IdeationHome(Model model) {
		System.out.println("들어왔다");
		return "home/section";
		
	}
	
}
