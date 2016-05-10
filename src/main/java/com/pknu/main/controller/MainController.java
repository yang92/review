package com.pknu.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.main.service.MainService;

@Controller
public class MainController {
	@Autowired
	private MainService mainService;
	
	@RequestMapping("/main.main")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		return mav;
	}
	@RequestMapping("/search.main")
	public ModelAndView search(String target) {
		return mainService.searchAll(target);
	}
}
