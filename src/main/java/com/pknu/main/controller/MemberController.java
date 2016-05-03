package com.pknu.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.main.dto.MemberDto;
import com.pknu.main.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/login.main", method = RequestMethod.GET)
	public String loginForm(){
		
		return "login";
	}
	@RequestMapping(value="/login.main", method = RequestMethod.POST)
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
	
	@RequestMapping(value="/join.main", method = RequestMethod.GET)
	public String joinForm(){
		return "join";
	}
	
	@RequestMapping(value="/join.main", method = RequestMethod.POST)
	public String join(MemberDto member){
		memberService.insertMember(member);
		return "login";
	}
	
	@RequestMapping("/main.main")
	public ModelAndView main(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		return mav;
	}
}
