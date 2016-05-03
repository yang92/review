package com.pknu.main.service;

import com.pknu.main.dto.MemberDto;

public interface MemberService {

	int loginCheck(String id, String password);

	void insertMember(MemberDto member);

}
