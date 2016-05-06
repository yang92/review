package com.pknu.member.service;

import java.util.HashMap;

import com.pknu.member.dto.MemberDto;

public interface MemberService {

	int loginCheck(String id, String password);

	void insertMember(MemberDto member);
	HashMap<String, String> joinCheckId(String inputId);

}
