package com.huanletao.common.pojo;

public class YijiCatelog {
	private Integer yId;
	private String yName;
	public Integer getyId() {
		return yId;
	}
	public void setyId(Integer yId) {
		this.yId = yId;
	}
	public String getyName() {
		return yName;
	}
	public void setyName(String yName) {
		this.yName = yName;
	}
	@Override
	public String toString() {
		return "YijiCatelog [yId=" + yId + ", yName=" + yName + "]";
	}
	
}
