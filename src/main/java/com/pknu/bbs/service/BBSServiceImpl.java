package com.pknu.bbs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pknu.bbs.dao.BBSDao;

@Service
public class BBSServiceImpl implements BBSService{
	@Autowired
	private BBSDao bbsDao;
	
}
