package com.pknu.bbs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.bbs.dto.BBSDto;
import com.pknu.bbs.service.BBSService;

@Controller
public class BBSController {
	@Autowired
	private BBSService bbsService;
	
	// 게시판 - 자동차
	@RequestMapping(value="/list.bbs")
	public ModelAndView list(@RequestParam("pageNum") int pageNum) {
		return bbsService.list(pageNum);
	}
	
	
	// 글 읽기
	@RequestMapping(value="/read_car.bbs")
	public ModelAndView read_car(HttpServletRequest request, String weiver_no){
		System.out.println("controller 에서의 weiver no : "+weiver_no);
		String weiver="WEIVER_CAR";
		return bbsService.readCar(weiver_no, weiver);
	}
	//글쓰기(writeForm)
	@Transactional
	@RequestMapping("/writeForm.bbs")
	public String writeForm(HttpSession session){
		return "writeForm";
	}
	//글쓰기(write)
	@RequestMapping("/write.bbs")
	public String write(BBSDto article, HttpSession session){
		return bbsService.insertArticle(article, session);
	}
	
}
