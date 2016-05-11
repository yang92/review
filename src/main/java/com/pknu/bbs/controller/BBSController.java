package com.pknu.bbs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
	


	
	@RequestMapping(value="/{whatPage}.bbs")
	public ModelAndView listView(@RequestParam("pageNum") int pageNum, @PathVariable String whatPage) {

		return bbsService.list(bbsService.getCategoryNum(whatPage),pageNum);
	}

	// 글 읽기
	@RequestMapping(value="/read_car.bbs")
	public ModelAndView read_car(HttpServletRequest request, String weiver_no, int pageNum, int fileStatus){
		//System.out.println("controller 에서의 weiver no : "+weiver_no);
		String weiver="WEIVER_CAR";
		return bbsService.readCar(weiver_no, weiver, pageNum, fileStatus);
	}
	//글쓰기(writeForm)
	@Transactional
	@RequestMapping("/writeForm.bbs")
	public String writeForm(HttpSession session, HttpServletResponse res){
		return "writeForm";
	}
	//글쓰기(write)
	@RequestMapping(value="/write.bbs", method = RequestMethod.POST)
	public String write(@ModelAttribute("article") BBSDto article, HttpSession session, MultipartHttpServletRequest mReq){
		System.out.println(article+"////"+mReq);
		return bbsService.insertArticle(article, session, mReq);
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
		return bbsService.updateArticle(article);		
	}
	
	
}
