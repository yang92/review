package com.pknu.bbs.aop;

import javax.inject.Named;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Named
@Aspect
public class LoginAuthAspect {

	@Pointcut("execution(* com.pknu.bbs.controller.BBSController.writeForm(..))")
//	@Pointcut("bean(BBSController)")
	public void writeForm(){}
	
	@Pointcut("execution(* com.pknu.bbs.member.MemberController.login(..))")
	public void login(){}
	
	@Around(value="writeForm()")
	public Object writeLogin(ProceedingJoinPoint pjt) throws Throwable{
		HttpSession session = null;
		HttpServletResponse res = null;
		for(Object obj:pjt.getArgs()){
			if(obj instanceof HttpSession){
				session = (HttpSession)obj;
			}
			if(obj instanceof HttpServletResponse){
				res = (HttpServletResponse)obj;
			}
		}
		if(session.getAttribute("id")==null){
			session.setAttribute("writeForm", "ok");
			return "login";//컨트롤러가 String을 리턴하므로 가능함
			//res.sendRedirect("/bbs/loginForm.bbs");
		}
				
		Object result = pjt.proceed();
		return result;
	}
}
