package com.huanletao.common.pojo;

import java.util.Date;

public class User {
	private Long ID;
	private String userId;
	private String userName;
	private String userPassword;
	private String userPhone;
	private String userNickname;
	private String userEmail;
	private int userType=0;//默认都是0
	private Date registerTime; //注册时间
	private Date lastLoginTime; //最近一次登录时间
	private int userDelete=0;    //用户软删除      0不删除 1删除 默认不删除
	public int getUserDelete() {
		return userDelete;
	}
	public void setUserDelete(int userDelete) {
		this.userDelete = userDelete;
	}
	public Long getID() {
		return ID;
	}
	public void setID(Long iD) {
		ID = iD;
	}
	public String getUserId() {
		return userId;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public Integer getUserType() {
		return userType;
	}
	public void setUserType(Integer userType) {
		this.userType = userType;
	}
	public Date getRegisterTime() {
	return registerTime;
}
public void setRegisterTime(Date registerTime) {
	this.registerTime = registerTime;
}
public Date getLastLoginTime() {
	return lastLoginTime;
}
public void setLastLoginTime(Date lastLoginTime) {
	this.lastLoginTime = lastLoginTime;
}

	
	
}
