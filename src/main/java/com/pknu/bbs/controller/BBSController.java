package com.pknu.bbs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.bbs.service.BBSService;

@Controller
public class BBSController {
	@Autowired
	private BBSService bbsService;
	
	@RequestMapping(value="/food.bbs")
	public ModelAndView list(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("list");
		return mav;
	}
}
