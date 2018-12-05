package com.zhou.meishimeike.entity;

import java.util.Date;
import java.util.List;

public class ClassifyList {
	
	private Integer cId;
	private Integer mId;
	private String cName;
	private Date cCreateTime;
	/**
	 * 商品对象  -----1一对多关系
	 */
	private List<Commodity> commodity;
	
	
	
	
	
	public Date getcCreateTime() {
		return cCreateTime;
	}

	public void setcCreateTime(Date cCreateTime) {
		this.cCreateTime = cCreateTime;
	}

	public Integer getmId() {
		return mId;
	}

	public void setmId(Integer mId) {
		this.mId = mId;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public Integer getcId() {
		return cId;
	}

	public void setcId(Integer cId) {
		this.cId = cId;
	}


	public List<Commodity> getCommodity() {
		return commodity;
	}

	public void setCommodity(List<Commodity> commodity) {
		this.commodity = commodity;
	}

	@Override
	public String toString() {
		return "ClassifyList [cId=" + cId + ", mId=" + mId + ", cName=" + cName + ", cCreateTime=" + cCreateTime
				+ ", commodity=" + commodity + "]";
	}
	
}
