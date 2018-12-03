package com.zhou.meishimeike.entity;

import java.util.List;

public class Merchant {
	
	public Merchant() {
	}
	private Integer id;
	private String phone;
	private String pass;
	private String name;
	private List  <MerchantInfoImg> imgList;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List  <MerchantInfoImg> getImgList() {
		return imgList;
	}
	
	public void setImgList(List  <MerchantInfoImg> imgList) {
		this.imgList = imgList;
	}
	
}
