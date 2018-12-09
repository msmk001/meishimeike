package com.zhou.meishimeike.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zhou.meishimeike.dao.AdminDao;
import com.zhou.meishimeike.entity.AdminData;
import com.zhou.meishimeike.service.AdminService;


@Service
@Transactional
public class AdminServiceImp implements  AdminService{
	
	@Autowired
	AdminDao adminDao;
	
	@Override
	public AdminData getAdminData() {
		// TODO Auto-generated method stub
		AdminData adminData = new AdminData();
		adminData.setCommoditySum(adminDao.getCommoditySum());
		adminData.setDealSumToday(adminDao.getDealSumToday());
		adminData.setMerchantSum(adminDao.getMerchantSum());
		adminData.setUserSum(adminDao.getUserSum());
		return adminData;
	}

}
