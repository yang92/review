package com.pknu.main.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pknu.main.dao.MemberDao;
import com.pknu.main.dto.MemberDto;
import com.pknu.main.util.LoginStatus;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao memberDao;
	
	@Override
	public int loginCheck(String id, String password) {
		int result = 0;
		String DBPassword = memberDao.selectPassword(id);
		
		if(DBPassword == null){
			result = LoginStatus.invalid_id;
		}
		else if(DBPassword.equals(password)){
			result = LoginStatus.ok;
		}
		else{
			result = LoginStatus.invalid_password;
		}
		return result;
	}

	@Override
	public void insertMember(MemberDto member) {
		memberDao.insertMember(member);
		
	}



}
