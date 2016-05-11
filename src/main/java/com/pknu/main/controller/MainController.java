package com.pknu.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.main.service.MainService;

@Controller
public class MainController {
	@Autowired
	private MainService mainService;
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping("/main.main")
	public ModelAndView main() {
		mav.setViewName("main");
		return mav;
	}
	@RequestMapping(value="/search.main")
	public ModelAndView search(String target, @RequestParam("pageNum") int pageNum) {
//		System.out.println("POST POST POST POST POST ");
		return mainService.searchAll(target, pageNum);
	}
	
//	@RequestMapping(value="/search.main", method = RequestMethod.GET)
//	public ModelAndView afterSearch() {
//		System.out.println("GET GET GET GET");
//		mav.setViewName("search");
//		return mav;
//	}
}
