package com.zhou.meishimeike.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhou.meishimeike.dao.MerchantDao;
import com.zhou.meishimeike.service.MerchantService;


@Service
public class MerchantServiceImp implements MerchantService {
	
	@Autowired
	MerchantDao merchantDao;
	
	
	@Override
	public boolean hasUser(String phone, String pass) {
		
		return merchantDao.hasMerchant(phone, pass);
	}


	@Override
	public boolean addMerchant(String phone, String pass) {
		// TODO Auto-generated method stub
		return merchantDao.addMerchant(phone, pass);
	}

}
