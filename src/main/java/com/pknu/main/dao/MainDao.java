package com.pknu.main.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.pknu.bbs.dto.BBSDto;

@Repository
public interface MainDao {

	public List<BBSDto> searchTitle(String target);


}
