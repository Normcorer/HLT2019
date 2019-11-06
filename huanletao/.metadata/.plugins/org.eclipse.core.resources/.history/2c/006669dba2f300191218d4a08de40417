package cn.huanletao.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import org.elasticsearch.action.admin.indices.create.CreateIndexResponse;
import org.elasticsearch.action.admin.indices.delete.DeleteIndexResponse;
import org.elasticsearch.action.index.IndexRequestBuilder;
import org.elasticsearch.client.transport.TransportClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huanletao.common.pojo.Product;
import com.huanletao.common.pojo.YijiCatelog;
import com.huanletao.common.utils.MapperUtil;
import com.huanletao.common.vo.EasyUIResult;

import cn.huanletao.mapper.ProductMapper;
import redis.clients.jedis.JedisCluster;

@Service
public class ProductService {

	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private JedisCluster cluster;
	
	public EasyUIResult queryPage(String cate, Integer page, Integer rows) {
		Integer zsCatelog;
		Integer ztCatelog;
		// TODO Auto-generated method stub
		EasyUIResult result = new EasyUIResult();
		String cate1[] = cate.split(",");
		Integer fCatelog=Integer.parseInt(cate1[0]);
		Integer sCatelog=Integer.parseInt(cate1[1]);
		Integer tCatelog=Integer.parseInt(cate1[2]);
		if (sCatelog==-1 && tCatelog!=-1) {
			zsCatelog=-1;
			ztCatelog = zsCatelog*100+tCatelog;
		}else if (tCatelog==-1 && sCatelog!=-1) {
			ztCatelog = -1;
			zsCatelog = fCatelog*2+sCatelog;
		}else if (sCatelog==-1 && tCatelog == -1) {
			zsCatelog = -1;
			ztCatelog = -1;
		}else {
			zsCatelog = fCatelog*2+sCatelog;
			ztCatelog = zsCatelog*100+tCatelog;
		}
		

		int total = productMapper.queryProductCountByCate(fCatelog,zsCatelog,ztCatelog);
		result.setTotal(total);
		int start=(page-1)*rows;
		List<Product> pList =productMapper.queryProductList(fCatelog,zsCatelog,ztCatelog,start,rows);
		result.setRows(pList);
				
		return result;
	}
	public Product queryProduct(String productId) {
		// TODO Auto-generated method stub
		String updateKey = "productupdate"+productId+".lock";
		if (cluster.exists(updateKey)) {
			return productMapper.queryProductById(productId);
		}
		String productquery= "productquery"+productId;
		try {
			if (cluster.exists(productquery)) {
				String pjson = cluster.get(productquery);
				return MapperUtil.MP.readValue(pjson, Product.class);
			}else {
				Product p = productMapper.queryProductById(productId);
				String pJson= MapperUtil.MP.writeValueAsString(p);
				cluster.setex(productquery, 60*60*24*10, pJson);	
				return p;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
	}
	
	public void insertProduct(Product product) {
		// TODO Auto-generated method stub
		Integer zsCatelog;
		Integer ztCatelog;
		Integer fCatelog = product.getfCatelog();
		Integer sCatelog = product.getsCatelog();
		Integer tCatelog = product.gettCatelog();
		if (sCatelog==-1 && tCatelog!=-1) {
			zsCatelog=-1;
			ztCatelog = zsCatelog*100+tCatelog;
		}else if (tCatelog==-1 && sCatelog!=-1) {
			ztCatelog = -1;
			zsCatelog = fCatelog*2+sCatelog;
		}else if (sCatelog==-1 && tCatelog == -1) {
			zsCatelog = -1;
			ztCatelog = -1;
		}else {
			zsCatelog = fCatelog*2+sCatelog;
			ztCatelog = zsCatelog*100+tCatelog;
		}
		product.setsCatelog(zsCatelog);
		product.settCatelog(ztCatelog);
		product.setProductId(UUID.randomUUID().toString());
		Date date = new Date(System.currentTimeMillis());
		product.setStartTime(date);
		productMapper.insertProduct(product);
		System.out.println(product.toString());
		
	}
	public List<YijiCatelog> queryCate() {
		// TODO Auto-generated method stub
		return productMapper.queryCate();
	}
	/**
	 * 商品更新
	 * @param product
	 */
	public void renewProduct(Product product) {
		// TODO Auto-generated method stub
		//生成锁
		String updateKey = "productupdate"+product.getProductId()+".lock";
		//删除缓存
		String productquery= "productquery"+product.getProductId();
		cluster.del(productquery);
		productMapper.renewProduct(product);
		cluster.del(updateKey);
	}
	/**
	 * 商品上架
	 * @param productId
	 */
	public void onProduct(String productId) {
		// TODO Auto-generated method stub
		productMapper.onProduct(productId);
	}
	public void offProduct(String productId) {
		// TODO Auto-generated method stub
		String productquery= "productquery"+productId;
		try {
			cluster.del(productquery);
			productMapper.offProduct(productId);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	/**
	 * 后台查询所有商品
	 * @param cate
	 * @param page
	 * @param rows
	 * @return
	 */
	public EasyUIResult queryAllPage(String cate, Integer page, Integer rows) {
		// TODO Auto-generated method stub
		Integer zsCatelog;
		Integer ztCatelog;
		EasyUIResult result = new EasyUIResult();
		String cate1[] = cate.split(",");
		Integer fCatelog=Integer.parseInt(cate1[0]);
		Integer sCatelog=Integer.parseInt(cate1[1]);
		Integer tCatelog=Integer.parseInt(cate1[2]);
		if (sCatelog==-1 && tCatelog!=-1) {
			zsCatelog=-1;
			ztCatelog = zsCatelog*100+tCatelog;
		}else if (tCatelog==-1 && sCatelog!=-1) {
			ztCatelog = -1;
			zsCatelog = fCatelog*2+sCatelog;
		}else if (sCatelog==-1 && tCatelog == -1) {
			zsCatelog = -1;
			ztCatelog = -1;
		}else {
			zsCatelog = fCatelog*2+sCatelog;
			ztCatelog = zsCatelog*100+tCatelog;
		}
		int total = productMapper.queryAllProductCountByCate(fCatelog,zsCatelog,ztCatelog);
		result.setTotal(total);
		int start=(page-1)*rows;
		List<Product> pList =productMapper.queryAllProductList(fCatelog,zsCatelog,ztCatelog,start,rows);
		result.setRows(pList);
				
		return result;
	}
	
	public void updateSales(String productId, Integer num) throws Exception {
		// TODO Auto-generated method stub
	
			Product product = productMapper.queryProductById(productId);
			if (product.getProductNum()-num>=0) {
				String productrank = "salesRank:"+productId;
				cluster.zincrby("prank", num, productrank);
				productMapper.updateSales(productId,num);
			}else{
				throw new Exception("抱歉，库存不足了！");
			}
			
		
		
	}
	/**
	 * 销量排行
	 */
	public List<Product> showRank(Integer num) {
		// TODO Auto-generated method stub
		Set<String> zrevrange = cluster.zrevrange("prank", 0, num);
		List<Product> pList = new ArrayList<Product>();
		for (String string : zrevrange) {
			String productId = string.split(":")[1];
			//System.out.println(productId);
			Product newProduct = productMapper.queryProductById(productId);
			//System.out.println("product:"+newProduct);
			int score = cluster.zscore("prank", string).intValue();
			if (score!=newProduct.getSales()) {
				score=newProduct.getSales();
			}
			newProduct.setSales(score);
			
			pList.add(newProduct);
		}
		return pList;
	}
	
	@Autowired
	private TransportClient client;
	
	public void creatIndex() {
		try {
			List<Product> pList=productMapper.selectAllProductList();
			//准备一个transportclient客户端对象
			//判断easymall是否存在.不存在才创建
			if(!client.admin().indices().prepareExists("huanle").get().isExists()){
				//创建索引
				CreateIndexResponse response = client.admin().indices().prepareCreate("huanle").get();
				System.out.println(response.isAcknowledged());
			}
			else{
				DeleteIndexResponse actionGet=client.admin().indices().prepareDelete("huanle").execute().actionGet();
				CreateIndexResponse response = client.admin().indices().prepareCreate("huanle").get();
				System.out.println(actionGet.isAcknowledged()+" "+response.isAcknowledged());
			}
			//新增文档数据
			for (Product product : pList) {
				String pJson=MapperUtil.MP.writeValueAsString(product);
				IndexRequestBuilder request = client.prepareIndex("huanle", "product",
						product.getProductId());
				request.setSource(pJson);
				request.get();
				System.out.println(pJson);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
