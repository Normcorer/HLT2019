package cn.huanletao.config;

import java.net.InetAddress;
import java.util.List;

import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.transport.client.PreBuiltTransportClient;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties(prefix="huanletao.es")
public class ESConfig {
	private String clusterName;
	private List<String> nodes;
	//初始化方法对象
	@Bean
	public TransportClient initTransportClient(){
		try{
			//Setting对象,包装clusterName
			Settings set=Settings.builder().put("cluster.name",clusterName).build();
			TransportClient client=new PreBuiltTransportClient(set);
			//为client赋值 底层使用的prepare预包装,提供ip 和端口
			for(String node:nodes){
				//192.168.75.128:9300
				String host=node.split(":")[0];
				int port=Integer.parseInt(node.split(":")[1]);
				InetSocketTransportAddress ista1=new InetSocketTransportAddress(InetAddress.getByName(host),port);
				client.addTransportAddress(ista1);
			}
			return client;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}	
	}
	
	public String getClusterName() {
		return clusterName;
	}
	public void setClusterName(String clusterName) {
		this.clusterName = clusterName;
	}
	public List<String> getNodes() {
		return nodes;
	}
	public void setNodes(List<String> nodes) {
		this.nodes = nodes;
	}
	
	
}
