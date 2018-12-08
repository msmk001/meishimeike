package com.zhou.meishimeike.entity;

public class AdminData {
	private int commoditySum;	//商品总数
	private int dealSumToday; //今日成交数量
	private int merchantSum; 	//商家总数
	private int userSum; 	//用户总数
	
	
	
	

	public int getDealSumToday() {
		return dealSumToday;
	}
	public void setDealSumToday(int dealSumToday) {
		this.dealSumToday = dealSumToday;
	}
	public int getMerchantSum() {
		return merchantSum;
	}
	public void setMerchantSum(int merchantSum) {
		this.merchantSum = merchantSum;
	}
	public int getUserSum() {
		return userSum;
	}
	public void setUserSum(int userSum) {
		this.userSum = userSum;
	}
	public int getCommoditySum() {
		return commoditySum;
	}
	public void setCommoditySum(int commoditySum) {
		this.commoditySum = commoditySum;
	}
	
	
	
}
