package com.pknu.bbs.service;

import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import com.pknu.bbs.dao.BBSDao;
import com.pknu.bbs.dto.BBSDto;
import com.pknu.bbs.dto.GetListDto;
import com.pknu.bbs.util.Page;

@Service
public class BBSServiceImpl implements BBSService{
	@Inject
	BBSDao bbsDao;
	ModelAndView mav;
	
	@Resource
	Page page;
	
	
	
	List<BBSDto> articleList;
	
	// 게시판
	@Override
	public ModelAndView list(String tableName, int pageNum){
		
		
		System.out.println(tableName);
		
		int pageSize=10;
		int pageBlock=10;
		mav = new ModelAndView();
		int totalCount=bbsDao.getArticleCount();
		page.paging(pageNum, totalCount, pageSize, pageBlock);
		

		
		GetListDto getListDto = new GetListDto();
		getListDto.setStartRow(page.getStartRow());
		getListDto.setEndRow(page.getEndRow());
		getListDto.setTableName(tableName);

		articleList=bbsDao.getArticles(getListDto);
		
		mav.addObject("totalCount",totalCount);
		mav.addObject("articleList",articleList);
		mav.addObject("pageNum", pageNum);
		mav.addObject("pageCode", page.getSb().toString());
		mav.setViewName("car");
		return mav;
	}

	// 글 읽기
	@Override
	public ModelAndView readCar(String weiver_no, String weiver) {
		mav = new ModelAndView();
		BBSDto article=null;
		System.out.println("weiver ->>>"+weiver);
		
		HashMap<String, String> hm = new HashMap<>();
		hm.put("weiver_no", weiver_no);
		hm.put("weiverName", weiver);
		System.out.println(hm.get("weiverName"));
		
		bbsDao.hitUp(hm);	// 조회수 1 증가
		article=bbsDao.readCar(weiver_no);	// 읽을 글 select
		System.out.println("$$$$$$$$$$$$$$$$$$$ 글 select 완료 : "+article.getWeiver_content());
		
		mav.addObject("article", article);
		mav.setViewName("readCar");
		
		return mav;
	}
	//글쓰기
	@Override
	public String insertArticle(BBSDto article, HttpSession session) {
		
		article.setWeiver_id((String)session.getAttribute("id"));
		System.out.println(article);
		bbsDao.insertArticle(article);

		return "redirect:/list.bbs?pageNum=1";
	}

	@Override
	public String getCategoryNum(String whatPage) {
		// TODO Auto-generated method stub

		
		return bbsDao.getTableName(whatPage);
	}
	
	
	
	
}
