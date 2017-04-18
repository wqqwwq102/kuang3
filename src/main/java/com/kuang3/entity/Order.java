package com.kuang3.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Order {
	private String orderid;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date buyTime;
	private int count;
	private User user;
	private Mills mills;
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public Date getBuyTime() {
		return buyTime;
	}
	public void setBuyTime(Date buyTime) {
		this.buyTime = buyTime;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Mills getMills() {
		return mills;
	}
	public void setMills(Mills mills) {
		this.mills = mills;
	}
	public double getPrice(){
		return count*(mills.getMaintenanceCost());
	}
}
