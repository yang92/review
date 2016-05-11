package com.pknu.bbs.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.pknu.bbs.dto.BBSDto;

@Repository
public interface BBSDao {
	public int getArticleCount();
	public List<BBSDto> getArticles(HashMap<String, Integer> hm);
	
	public void hitUp(HashMap<String, String> hm);
	public BBSDto readCar(String weiver_no);
	public void insertArticle(BBSDto article);
	public void deleteArticle(String weiver_no);
	public BBSDto getUpdateArticle(String weiver_no);

}
