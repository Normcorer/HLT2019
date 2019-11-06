import java.util.HashSet;
import java.util.Set;

import org.apache.commons.pool2.impl.GenericObjectPoolConfig;
import org.junit.Test;

import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.JedisCluster;

public class RedisTest {
	@Test
	public void test(){
		Set<HostAndPort> set = new HashSet<HostAndPort>();
		set.add(new HostAndPort("10.42.3.8",8000));
		GenericObjectPoolConfig config = new GenericObjectPoolConfig();
		config.setMaxTotal(200);
		config.setMaxIdle(8);
		JedisCluster cluster = new JedisCluster(set,config);
		cluster.set("name","zyj");
		System.out.println(cluster.get("name"));
	}
}
