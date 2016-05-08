package com.pknu.bbs.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.bbs.dao.BBSDao;
import com.pknu.bbs.dto.BBSDto;

@Service
public class BBSServiceImpl implements BBSService{
	@Inject
	BBSDao bbsDao;
	ModelAndView mav;
	
	
	List<BBSDto> articleList;
	
	// 게시판
	public ModelAndView car(){
		mav = new ModelAndView();
	   	
		int totalCount=bbsDao.getArticleCount();			
		articleList=bbsDao.getArticles();
		
		mav.addObject("totalCount",totalCount);
		mav.addObject("articleList",articleList);
		mav.setViewName("car");
		return mav;
	}

	// 글 읽기
	@Override
	public ModelAndView readCar(String weiver_no, String weiver) {
		mav = new ModelAndView();
		BBSDto article=null;
		System.out.println("weiver ->>>"+weiver);
		
		HashMap<String, String> hm = new HashMap<>();
		hm.put("weiver_no", weiver_no);
		hm.put("weiverName", weiver);
		System.out.println(hm.get("weiverName"));
		
		bbsDao.hitUp(hm);	// 조회수 1 증가
		article=bbsDao.readCar(weiver_no);	// 읽을 글 select
		System.out.println("$$$$$$$$$$$$$$$$$$$ 글 select 완료 : "+article.getWeiver_content());
		
		mav.addObject("article", article);
		mav.setViewName("readCar");
		
		return mav;
	}
	
	
	
	
	
}
