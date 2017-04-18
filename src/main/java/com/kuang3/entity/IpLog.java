package com.kuang3.entity;



public class IpLog {
	private String ip;
	private String ipDate;
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	
	
	public IpLog(String ip, String ipDate) {
		super();
		this.ip = ip;
		this.ipDate = ipDate;
	}
	public String getIpDate() {
		return ipDate;
	}
	public void setIpDate(String ipDate) {
		this.ipDate = ipDate;
	}
	public IpLog() {
		super();
	}
	
	
	
}
