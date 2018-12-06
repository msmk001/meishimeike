package com.zhou.meishimeike.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhou.meishimeike.dao.CommodityDao;
import com.zhou.meishimeike.entity.Commodity;
import com.zhou.meishimeike.service.CommodityService;


@Service
public class CommodityServiceImp implements CommodityService {
	@Autowired
	CommodityDao commodityDao;

	@Override
	public boolean addCommodity(Commodity c) {
		// TODO Auto-generated method stub
		return commodityDao.addCommodity(c);
	}

	@Override
	public boolean deleteCommodityById(int id) {
		// TODO Auto-generated method stub
		return commodityDao.deletecommodityById(id);
	}

	@Override
	public boolean deleteCommodityBycyId(int id) {
		// TODO Auto-generated method stub
		return commodityDao.deletecommodityBycyId(id);
	}

	
	
}
