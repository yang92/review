package com.pknu.bbs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.pknu.bbs.service.BBSService;

@Controller
public class BBSController {
	@Autowired
	private BBSService bbsService;
}
