package com.zhou.meishimeike.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhou.meishimeike.dao.AdminDao;
import com.zhou.meishimeike.entity.AdminData;
import com.zhou.meishimeike.service.AdminService;


@Service
public class AdminServiceImp implements  AdminService{
	
	@Autowired
	AdminDao adminDao;
	
	@Override
	public AdminData getAdminData() {
		// TODO Auto-generated method stub
		return adminDao.getAdminData();
	}

}
