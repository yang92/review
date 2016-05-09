package com.pknu.main.service;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class MainServiceImpl implements MainService {

	@Override
	public ModelAndView searchAll(String target) {
		ModelAndView mav = null;
		System.out.println(target);
		
		return mav;
	}

}
