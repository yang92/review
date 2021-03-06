package com.pknu.bbs.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.pknu.bbs.dto.BBSDto;
import com.pknu.bbs.dto.FileDto;

@Repository
public interface BBSDao {
	public int getArticleCount();
	public List<BBSDto> getArticles(HashMap<String, Integer> hm);
	//읽기
	public void hitUp(HashMap<String, String> hm);
	public BBSDto readCar(String weiver_no);
	public List<FileDto> getFiles(String weiver_no);
	
	//쓰기
	public void insertArticle(BBSDto article);
	public int getNextArticleNum();
	public void insertFile(FileDto fileDto);
	//삭제
	public void deleteArticle(String weiver_no);
	//수정
	public BBSDto getUpdateArticle(String weiver_no);
	
	
	

}
