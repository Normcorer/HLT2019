package cn.easybuy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
//启动eureka注册中心的进程
@EnableEurekaServer
public class EasybuyServer {
public static void main(String[] args) {
	SpringApplication.run( EasybuyServer.class, args);
}
}
