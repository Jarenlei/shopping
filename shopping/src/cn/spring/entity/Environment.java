package cn.spring.entity;

import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class Environment {

	private Map<String,String> env;
	
	public Map<String, String> getEnv() {
		return env;
	}

	public void setEnv(Map<String, String> env) {
		this.env = env;
	}
	
	public String getValue(String key){
		return env.get(key);
	}
}
