package com.kuang3.entity;

public class User {
	private String uid;
	private String email;
	private String pwd;
	private String phone;
	private String address;
	private int status;
	private String Captcha;
	private String qqNumber;
	private String realName;
	private String presentPwd;
	private Double assets;
	private Double bitcoin;
	private String idNumber;
	
	public String getQqNumber() {
		return qqNumber;
	}
	public void setQqNumber(String qqNumber) {
		this.qqNumber = qqNumber;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getPresentPwd() {
		return presentPwd;
	}
	public void setPresentPwd(String presentPwd) {
		this.presentPwd = presentPwd;
	}
	public Double getAssets() {
		return assets;
	}
	public void setAssets(Double assets) {
		this.assets = assets;
	}
	public Double getBitcoin() {
		return bitcoin;
	}
	public void setBitcoin(Double bitcoin) {
		this.bitcoin = bitcoin;
	}
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	public String getCaptcha() {
		return Captcha;
	}
	public void setCaptcha(String captcha) {
		Captcha = captcha;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
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
				+ ", phone=" + phone + ", address=" + address + ", status="
				+ status + ", Captcha=" + Captcha + ", qqNumber=" + qqNumber
				+ ", realName=" + realName + ", presentPwd=" + presentPwd
				+ ", assets=" + assets + ", bitcoin=" + bitcoin + ", idNumber="
				+ idNumber + "]";
	}

	
}
