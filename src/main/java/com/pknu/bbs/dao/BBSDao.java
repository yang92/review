package com.pknu.bbs.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.pknu.bbs.dto.BBSDto;

@Repository
public interface BBSDao {
	int getArticleCount();
	List<BBSDto> getArticles();

}
