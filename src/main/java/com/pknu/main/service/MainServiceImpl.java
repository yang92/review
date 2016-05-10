package com.pknu.main.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.main.dao.MainDao;

@Service
public class MainServiceImpl implements MainService {
	@Autowired
	MainDao mainDao;
	
	@Override
	public ModelAndView searchAll(String target) {
		ModelAndView mav = null;
		
		
		return mav;
	}

}
