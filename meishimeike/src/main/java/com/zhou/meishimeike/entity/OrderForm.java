package com.zhou.meishimeike.entity;

import java.util.Date;

public class OrderForm {
	private Integer oId	;
	private Integer mId	;
	private Integer uId	;
	private Integer ufId;
	
	private Integer oCode; //1 未支付  2已经支付
	private String oTradeNo;
	private String oInfo;
	
	private Double oPrice;

	private Date oCreate;
	
	
	
	
	
	
	
	
	public Integer getoId() {
		return oId;
	}

	public void setoId(Integer oId) {
		this.oId = oId;
	}

	public Integer getmId() {
		return mId;
	}

	public void setmId(Integer mId) {
		this.mId = mId;
	}

	public Integer getuId() {
		return uId;
	}

	public void setuId(Integer uId) {
		this.uId = uId;
	}

	public Integer getoCode() {
		return oCode;
	}

	public void setoCode(Integer oCode) {
		this.oCode = oCode;
	}

	public String getoTradeNo() {
		return oTradeNo;
	}

	public void setoTradeNo(String oTradeNo) {
		this.oTradeNo = oTradeNo;
	}

	public String getoInfo() {
		return oInfo;
	}

	public void setoInfo(String oInfo) {
		this.oInfo = oInfo;
	}

	public Double getoPrice() {
		return oPrice;
	}

	public void setoPrice(Double oPrice) {
		this.oPrice = oPrice;
	}

	public Date getoCreate() {
		return oCreate;
	}

	public void setoCreate(Date oCreate) {
		this.oCreate = oCreate;
	}

	public Integer getUfId() {
		return ufId;
	}

	public void setUfId(Integer ufId) {
		this.ufId = ufId;
	}
	
}
