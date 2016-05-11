package com.pknu.bbs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
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
	public ModelAndView read_car(HttpServletRequest request, String weiver_no, int pageNum){
		//System.out.println("controller 에서의 weiver no : "+weiver_no);
		String weiver="WEIVER_CAR";
		return bbsService.readCar(weiver_no, weiver, pageNum);
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
	//글 삭제
	@RequestMapping("/delete.bbs")
	public String deleteArticle(String weiver_no, int pageNum){
		return bbsService.deleteArticle(weiver_no, pageNum);
	}
	//글 수정
	@RequestMapping("/updateForm.bbs")
	public ModelAndView getUpdateArticle(String weiver_no, int pageNum, int weiver_file){
		return bbsService.updateForm(weiver_no, pageNum, weiver_file);
	}
	
	@RequestMapping("/update.bbs")
	public ModelAndView updateArticle(BBSDto article, @ModelAttribute("pageNum") String pageNum){		
		//아래와 같이 사용시에는 오류가 남, Integer는 set,get 메소드가 없음 @ModelAttribute("fileNumList") ArrayList<Integer> fileNumList,
		//UpdateDto를 만들어서 set,get 메소드를 사용해야지 jsp에서 복수개의 name 속성을 가지는 값이 넘오옴 
		return bbsService.updateArticle(article);		
	}
	
}
