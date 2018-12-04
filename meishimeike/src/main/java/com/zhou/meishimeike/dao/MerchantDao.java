package com.zhou.meishimeike.dao;

import com.zhou.meishimeike.entity.MerchantInfo;

public interface MerchantDao {
	boolean hasMerchant(String phone, String pass);
	
	boolean addMerchant(String phone,String pass);
	boolean addMerchantInfo(MerchantInfo info);
	
	
	boolean hasMerchantByPhone(String phone);
	
	int selectCodeByPhone(String phone);
	
	int getIdByPhone(String phone);
	
	boolean updateCodeById(Integer i);
}
