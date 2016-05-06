package com.pknu.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.member.dto.MemberDto;
import com.pknu.member.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping(value="/login.main", method = RequestMethod.GET)
	public String loginForm(){
		
		return "login";
	}
	@RequestMapping(value="/login.main", method = RequestMethod.POST)
	public ModelAndView login(String id, String pw, HttpServletRequest req){
		ModelAndView mav = new ModelAndView();
		
		int result = memberService.loginCheck(id, pw);
		
		if(result == 1){
			req.getSession().setAttribute("id", id);
			mav.setViewName("redirect:/main.main");
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
		return "main";
	}
	
	@RequestMapping("/main.main")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		return mav;
	}
	@RequestMapping("/logout.main")
	public String logout(HttpServletRequest req){
		req.getSession().setAttribute("id", null);
		return "redirect:/main.main";
	}
	
	@RequestMapping("/joinCheckId.main")
	public void joinCheckId(String inputId, HttpServletResponse resp){
		
		memberService.joinCheckId(inputId, resp);
	
	}
	

}
