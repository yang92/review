package com.pknu.proj.service;

import com.pknu.proj.dto.MemberDto;

public interface MemberService {

	int loginCheck(String id, String password);

	void insertMember(MemberDto member);

}
