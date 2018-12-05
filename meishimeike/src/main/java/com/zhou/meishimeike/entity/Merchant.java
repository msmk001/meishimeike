package com.zhou.meishimeike.entity;

import java.util.Date;
import java.util.List;

public class Merchant {
	
	public Merchant() {
		date=new Date();
	}
	
	
	
	
	
	private Integer id;
	private String phone;
	private String pass;
	private String name;
	private int code;
	private Date date;
	
	/**
	 * 商家详细信息对象(LOGO,联系人,手机号.....营业执照...) ------ 1对1关系
	 */
	private MerchantInfo info ;
	
	/**
	 * 商家商品类别对象(例子:炒饭,饮料,甜品)------  1 对 多关系
	 */
	private List<ClassifyList> classifyList;
	
	
	
	
	
	
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
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Merchant [id=" + id + ", phone=" + phone + ", pass=" + pass + ", name=" + name + ", code=" + code
				+ ", info=" + info + ", date=" + date + "]";
	}
	public List<ClassifyList> getClassifyList() {
		return classifyList;
	}
	public void setClassifyList(List<ClassifyList> classifyList) {
		this.classifyList = classifyList;
	}

	
}
