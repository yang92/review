package com.pknu.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.bbs.dto.BBSDto;
import com.pknu.main.dao.MainDao;

@Service
public class MainServiceImpl implements MainService {
	@Autowired
	MainDao mainDao;
	
	ModelAndView mav = new ModelAndView();
	
	@Override
	public ModelAndView searchAll(String target, int pageNum) {
		List<BBSDto> articleList;
		mav.addObject("target", target);
		target = "%"+target+"%";
		
		System.out.println("target!!!!!!"+target);
		articleList = mainDao.searchTitle(target);
		mav.addObject("articleList", articleList);
		mav.addObject("pageNum", pageNum);
		mav.setViewName("search");
		
		return mav;
	}

}
