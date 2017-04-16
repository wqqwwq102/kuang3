package com.kuang3.entity;

public class User {
	private String uid;
	private String email;
	private String pwd;
	private String phone;
	private String address;
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", email=" + email + ", pwd=" + pwd
				+ ", phone=" + phone + ", address=" + address + "]";
	}
	
}
