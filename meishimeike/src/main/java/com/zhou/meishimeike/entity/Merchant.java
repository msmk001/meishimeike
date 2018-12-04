package com.zhou.meishimeike.entity;

public class Merchant {
	
	public Merchant() {
	}
	
	
	
	
	
	private Integer id;
	private String phone;
	private String pass;
	private String name;
	private int code;
	private MerchantInfo info ;
	
	
	
	
	
	
	
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
	public MerchantInfo getInfo() {
		return info;
	}
	public void setInfo(MerchantInfo info) {
		this.info = info;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}

	
}
