package com.zhou.meishimeike.service;

import java.util.List;

import com.zhou.meishimeike.entity.ClassifyList;
import com.zhou.meishimeike.entity.Merchant;
import com.zhou.meishimeike.entity.MerchantInfo;
import com.zhou.meishimeike.util.PageUtil;

public interface MerchantService {
	boolean hasUser(String phone, String pass);
	
	boolean addMerchant(Merchant m);
	
	boolean addMerchantInfo(MerchantInfo info);
	

	boolean hasMerchantByPhone(String phone);
	
	int selectCodeByPhone(String phone);
	
	
	int getIdByPhone(String phone);
	
	
	
	boolean updateCodeById(Integer id,Integer code);

	PageUtil<Merchant> getAllMerchant(int PageNo);

	Merchant getMerchantById(int id);
	
	boolean addClassifyList(ClassifyList c);

	Merchant getDataMerchantById(String id);

	boolean deleteClassifyById(int id);


	List<Merchant> getIndexData(); 
	
}
