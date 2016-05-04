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
	public ModelAndView login(String id, String password, HttpServletRequest req){
		ModelAndView mav = new ModelAndView();
		
		int result = memberService.loginCheck(id, password);
		
		if(result == 1){
			req.getSession().setAttribute("id", id);
			mav.setViewName("main");
		}
		else if(result == 2){
			System.out.println("비밀번호 오류");
			mav.setViewName("main");
		}
		else{
			System.out.println("가입되지 않은 회원");
			mav.setViewName("main");
		}
		
		return mav;
	}
	
	@RequestMapping(value="/join.main", method = RequestMethod.GET)
	public String joinForm(){
		return "join2";
	}
	
	@RequestMapping(value="/join.main", method = RequestMethod.POST)
	public String join(MemberDto member){
		memberService.insertMember(member);
		return "main";
	}
	
	@RequestMapping("/main.main")
	public ModelAndView main(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		return mav;
	}
	@RequestMapping("/logout.main")
	public String logout(HttpServletRequest req){
		req.getSession().setAttribute("id", null);
		return "main";
	}
}
