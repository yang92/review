package com.pknu.member.service;

import javax.servlet.http.HttpServletResponse;

import com.pknu.member.dto.MemberDto;

public interface MemberService {

	int loginCheck(String id, String password);

	void insertMember(MemberDto member);
	void joinCheckId(String inputId, HttpServletResponse resp);

}
