package cn.huanletao;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;



@SpringBootApplication
@EnableEurekaClient
@MapperScan("cn.huanletao.mapper")
public class StartProductService {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SpringApplication.run(StartProductService.class, args);
	}

}
