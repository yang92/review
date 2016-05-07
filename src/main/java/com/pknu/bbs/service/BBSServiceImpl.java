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
	@Autowired
	private BBSDao bbsDao;
	ModelAndView mav;
	
//	@Inject
//	List<BBSDto> articleList;
	
	public ModelAndView car(){
		mav = new ModelAndView();
	   	
//		int totalCount=bbsDao.getArticleCount();			
//		articleList=bbsDao.getArticles();
		
//		mav.addObject("totalCount",totalCount);
//		mav.addObject("articleList",articleList);
		mav.setViewName("car");
		return mav;
	}
	
}
