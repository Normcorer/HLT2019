package cn.huanletao.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import cn.huanletao.service.ProductService;



@Component
@EnableScheduling
public class ScheController implements ApplicationRunner{
	@Autowired
	private ProductService productService;
	@Override
    public void run(ApplicationArguments var1) throws Exception{
       this.initES();
    }
	@Scheduled(cron = "0 0 1 * * ?")
	public void initES() {
		try{
			productService.creatIndex();
			System.out.println("现在"+new Date());
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
