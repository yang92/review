package com.pknu.main.service;

import org.springframework.web.servlet.ModelAndView;

public interface MainService {

	ModelAndView searchAll(String target, int pageNum);

}
