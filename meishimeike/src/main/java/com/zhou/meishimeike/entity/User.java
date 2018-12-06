package com.zhou.meishimeike.entity;

import java.util.List;

public class User {
	
	
	
	
	
	private Integer id;
	private String name;
	private String pass;
	private String email;
	private String phone;
	private List<USerInfo> userInfo;
	
	
	
	
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", pass=" + pass + ", email=" + email + ", phone=" + phone + "]";
	}
	public List<USerInfo> getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(List<USerInfo> userInfo) {
		this.userInfo = userInfo;
	}
	
	
}
