package com.pknu.member.service;

import com.pknu.member.dto.MemberDto;

public interface MemberService {

	int loginCheck(String id, String password);

	void insertMember(MemberDto member);

}
