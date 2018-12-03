package com.zhou.meishimeike.service;

public interface MerchantService {
	public boolean hasUser(String phone, String pass);
	
	boolean addMerchant(String phone,String pass);
}
