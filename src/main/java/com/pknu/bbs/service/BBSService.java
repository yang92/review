package com.pknu.bbs.service;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.pknu.bbs.dto.BBSDto;

public interface BBSService {
	// 게시판
	public ModelAndView list(String tableName, int pageNum);
	
	// 글 읽기
	public ModelAndView readCar(String weiver_no, String weiver);
	// 글 쓰기
	public String insertArticle(BBSDto article, HttpSession session);

	public String getCategoryNum(String whatPage);
}
