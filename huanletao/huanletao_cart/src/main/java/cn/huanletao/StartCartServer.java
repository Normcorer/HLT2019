package cn.huanletao;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
//eureka客户端
@EnableEurekaClient
@MapperScan("cn.huanletao.cart.mapper")
public class StartCartServer {

	public static void main(String[] args) {
		SpringApplication.run(StartCartServer.class, args);
	}
	
	@Bean
	@LoadBalanced
	public RestTemplate initRestTemplate() {
		return new RestTemplate();
	}
}
