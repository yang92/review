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
	
	// 게시판 - 음식
	@RequestMapping(value="/food.bbs")
	public ModelAndView food(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("list");
		return mav;
	}
	
	// 게시판 - 자동차
	@RequestMapping(value="/car.bbs")
	public ModelAndView car(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test");
		return mav;
	}
	
	// 게시판 - 전자기기
	@RequestMapping(value="/electronic.bbs")
	public ModelAndView electronic(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("list");
		return mav;
	}
	
	// 게시판 - 게임
	@RequestMapping(value="/game.bbs")
	public ModelAndView game(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("list");
		return mav;
	}
}
