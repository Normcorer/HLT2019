package cn.huanletao.redis.config;


import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

public class JdeisRedisConfig {
	/**
     * ip地址
     *
     */
public static final String IP_ADDRESS="192.168.44.128";
    /**
     * 端口号
     */
 public static final int PORT=6379;
   
 public  Jedis jedis; //存在redis中
    /**
     * 累计用户人数key
     */
   public  static final String TOTAL_KEY = "totalKey";
    /**
     * 日均活跃用户人数key
     */
   public  static final String  ACTIVE_KEY = "activeKey:";
     
    public  JdeisRedisConfig () {
    	GenericObjectPoolConfig poolConfig = new GenericObjectPoolConfig();
        poolConfig.setMaxTotal(50);
        poolConfig.setMaxIdle(50);
        poolConfig.setMaxWaitMillis(1000);
        JedisPool jedisPool = new JedisPool(poolConfig, IP_ADDRESS);
        jedis = jedisPool.getResource();
	}
    

}
