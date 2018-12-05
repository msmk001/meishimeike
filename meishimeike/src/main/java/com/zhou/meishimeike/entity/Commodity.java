package com.zhou.meishimeike.entity;

public class Commodity {
	
	private Integer cyId;
	private Integer cId;
	private double cPrice;
	private String cyName;
	private String cyImg;
	private String cyRemark;
	
	public Integer getCyId() {
		return cyId;
	}
	public void setCyId(Integer cyId) {
		this.cyId = cyId;
	}
	public Integer getcId() {
		return cId;
	}
	public void setcId(Integer cId) {
		this.cId = cId;
	}
	public double getcPrice() {
		return cPrice;
	}
	public void setcPrice(double cPrice) {
		this.cPrice = cPrice;
	}
	public String getCyName() {
		return cyName;
	}
	public void setCyName(String cyName) {
		this.cyName = cyName;
	}
	public String getCyImg() {
		return cyImg;
	}
	public void setCyImg(String cyImg) {
		this.cyImg = cyImg;
	}
	public String getCyRemark() {
		return cyRemark;
	}
	public void setCyRemark(String cyRemark) {
		this.cyRemark = cyRemark;
	}
	@Override
	public String toString() {
		return "Commodity [cyId=" + cyId + ", cId=" + cId + ", cPrice=" + cPrice + ", cyName=" + cyName + ", cyImg="
				+ cyImg + ", cyRemark=" + cyRemark + "]";
	}
	
	
	
}
