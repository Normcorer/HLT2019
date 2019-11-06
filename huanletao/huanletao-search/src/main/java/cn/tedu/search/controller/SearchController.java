package cn.tedu.search.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.huanletao.common.pojo.Product;

import cn.tedu.search.service.SearchService;

@RestController

public class SearchController {
	
	@Autowired
	private SearchService searchService;
	
	@RequestMapping("search/manage/query")
	public List<Product> searchByName(String query,Integer page,Integer rows){
		return searchService.searchByName(query,page,rows);
	}
	
}
