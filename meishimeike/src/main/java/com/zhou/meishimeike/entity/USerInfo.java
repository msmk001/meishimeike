package com.zhou.meishimeike.entity;

public class USerInfo {
	private Integer ufId;
	private Integer uId;
	private String ufName;
	private String ufSite;
	private String ufPhone;
	
	
	public Integer getUfId() {
		return ufId;
	}
	public void setUfId(Integer ufId) {
		this.ufId = ufId;
	}
	public Integer getuId() {
		return uId;
	}
	public void setuId(Integer uId) {
		this.uId = uId;
	}
	public String getUfName() {
		return ufName;
	}
	public void setUfName(String ufName) {
		this.ufName = ufName;
	}
	public String getUfSite() {
		return ufSite;
	}
	public void setUfSite(String ufSite) {
		this.ufSite = ufSite;
	}
	public String getUfPhone() {
		return ufPhone;
	}
	public void setUfPhone(String ufPhone) {
		this.ufPhone = ufPhone;
	}
	@Override
	public String toString() {
		return "USerInfo [ufId=" + ufId + ", uId=" + uId + ", ufName=" + ufName + ", ufSite=" + ufSite + ", ufPhone="
				+ ufPhone + "]";
	}
	
	
	
}
