package com.zhou.meishimeike.dao;

public interface MerchantDao {
	boolean hasMerchant(String phone, String pass);
	boolean addMerchant(String phone,String pass);
}
