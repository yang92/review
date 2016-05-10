package com.pknu.bbs.service;

import org.springframework.web.servlet.ModelAndView;

public interface BBSService {
	// 게시판
	public ModelAndView list(int pageNum);
	
	// 글 읽기
	public ModelAndView readCar(String weiver_no, String weiver);
}
