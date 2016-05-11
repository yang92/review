package com.pknu.bbs.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.pknu.bbs.dto.BBSDto;
import com.pknu.bbs.dto.GetListDto;

@Repository
public interface BBSDao {
	public int getArticleCount();
	public List<BBSDto> getArticles(GetListDto getListDto);
	
	public void hitUp(HashMap<String, String> hm);
	public BBSDto readCar(String weiver_no);
	public void insertArticle(BBSDto article);
	public String getTableName(String whatPage);

}
