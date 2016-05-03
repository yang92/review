package com.pknu.proj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.proj.dto.MemberDto;
import com.pknu.proj.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String loginForm(){
		
		return "login";
	}
	@RequestMapping(value="/login.do", method = RequestMethod.POST)
	public ModelAndView login(String id, String password){
		ModelAndView mav = new ModelAndView();
		int result = memberService.loginCheck(id, password);
		
		if(result == 1){
			mav.setViewName("main");
		}
		else if(result == 2){
			System.out.println("비밀번호 오류");
			mav.setViewName("login");
		}
		else{
			System.out.println("가입되지 않은 회원");
			mav.setViewName("login");
		}
		
		return mav;
	}
	
	@RequestMapping(value="/join.do", method = RequestMethod.GET)
	public String joinForm(){
		return "join";
	}
	
	@RequestMapping(value="/join.do", method = RequestMethod.POST)
	public String join(MemberDto member){
		memberService.insertMember(member);
		return "login";
	}
}
