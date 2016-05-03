package com.pknu.main.dao;

import org.springframework.stereotype.Repository;

import com.pknu.main.dto.MemberDto;

@Repository
public interface MemberDao {

	String selectPassword(String id);
	void insertMember(MemberDto member);


}
