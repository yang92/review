package com.pknu.member.dao;


import org.springframework.stereotype.Repository;

import com.pknu.member.dto.MemberDto;

@Repository
public interface MemberDao {

	String selectPassword(String id);
	void insertMember(MemberDto member);
	String selectId(String inputId);
	MemberDto userProfile(String id);

}
