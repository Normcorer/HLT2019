package cn.tedu.search.service;

import java.util.ArrayList;
import java.util.List;

import org.elasticsearch.action.search.SearchRequestBuilder;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.index.query.MatchQueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huanletao.common.pojo.Product;
import com.huanletao.common.utils.MapperUtil;


@Service
public class SearchService {
	@Autowired
	private TransportClient client;
	public List<Product> searchByName(String text, Integer page, Integer rows) {
		// 创建query对象 封装查询条件 MatchQuery
		MatchQueryBuilder query = QueryBuilders.matchQuery("productName", text);
		// 根据分页条件创建请求request
		SearchRequestBuilder request = client.prepareSearch("huanle");
		request.setQuery(query).setFrom((page - 1) * rows).setSize(rows);
		// 发送请求,获取查询结果集
		SearchResponse response = request.get();
		// 解析 封装了hits的list结果集,每个元素中使用source反序列化product
		SearchHit[] hits = response.getHits().getHits();
		// 准备一个空list
		List<Product> pList = new ArrayList<Product>();
		for (SearchHit hit : hits) {
			// _index,_type,_version source
			String pJson = hit.getSourceAsString();
			try {
				Product product = MapperUtil.MP.readValue(pJson, Product.class);
				pList.add(product);
			} catch (Exception e) {
				e.printStackTrace();
				return pList;
			}
		}
		return pList;
	}

}
