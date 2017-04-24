package com.kuang3.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class UserLog {
	private String uid;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date loginTime;
	private String loginIP;
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public Date getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}
	public String getLoginIP() {
		return loginIP;
	}
	public void setLoginIP(String loginIP) {
		this.loginIP = loginIP;
	}
	
}	
