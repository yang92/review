package com.pknu.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pknu.member.dto.MemberDto;
import com.pknu.member.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	ModelAndView mav;
	
	
	@RequestMapping(value="/login.member", method = RequestMethod.GET)
	public String loginForm(){
		
		return "login";
	}
	@RequestMapping(value="/login.member", method = RequestMethod.POST)
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
	
	@RequestMapping(value="/join.member", method = RequestMethod.GET)
	public String joinForm(){
		return "join";
	}
	
	@RequestMapping(value="/join.member", method = RequestMethod.POST)
	public String join(MemberDto member){
		memberService.insertMember(member);
		return "main";
	}
	
	@RequestMapping("/logout.member")
	public String logout(HttpServletRequest req){
		req.getSession().setAttribute("id", null);
		return "redirect:/main.main";
	}
	
	@RequestMapping("/joinCheckId.member")
	public void joinCheckId(String inputId, HttpServletResponse resp){
		
		memberService.joinCheckId(inputId, resp);
	
	}
	

	// 유저 프로필 보기
	@RequestMapping("/profile.member")
	public ModelAndView profile(HttpSession session) {
		String id=null;
		id=(String) session.getAttribute("id");
		System.out.println("프로필 보기 완료");
		
		return memberService.userProfile(id);
	}
	
	// 유저 프로필 수정ㅎ
	@RequestMapping(value="/profileUpdate.member", method=RequestMethod.POST)
	public String profileUpdate(@ModelAttribute("userInfo") MemberDto userInfo, HttpSession session) {
		System.out.println(userInfo.toString());
//		if(userInfo.getMember_pw()==""){
//			userInfo.setMember_pw("null");
//		}
		userInfo.setMember_id((String) session.getAttribute("id"));
		memberService.profileUpdate(userInfo);
		System.out.println("프로필 수정완료");
		return "redirect:/profile.member";
	}

}
