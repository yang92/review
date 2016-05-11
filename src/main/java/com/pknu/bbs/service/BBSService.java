package com.pknu.bbs.service;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.bbs.dto.BBSDto;

public interface BBSService {
	// 게시판
	public ModelAndView list(String tableName, int pageNum);
	
	// 글 읽기
	public ModelAndView readCar(String weiver_no, String weiver, int pageNum, int fileStatus);
	// 글 쓰기
	public String insertArticle(BBSDto article, HttpSession session, MultipartHttpServletRequest mReq);
	// 글 삭제
	public String deleteArticle(String weiver_no, int pageNum);
	//글 수정1
	public ModelAndView updateForm(String weiver_no, int pageNum, int weiver_file);
	//글 수정2
	public ModelAndView updateArticle(BBSDto article);
	//카테고리
	public String getCategoryNum(String whatPage);
}
