package com.zhou.meishimeike.entity;

public class CommodityJson {
	String name;
	double pice;
	int num;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPice() {
		return pice;
	}
	public void setPice(double pice) {
		this.pice = pice;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	@Override
	public String toString() {
		return "CommodityJson [name=" + name + ", pice=" + pice + ", num=" + num + "]";
	}
	
	
}
