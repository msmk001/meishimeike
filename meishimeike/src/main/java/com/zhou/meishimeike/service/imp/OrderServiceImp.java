package com.zhou.meishimeike.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.zhou.meishimeike.dao.OrderDao;
import com.zhou.meishimeike.entity.CommodityJson;
import com.zhou.meishimeike.entity.OrderForm;
import com.zhou.meishimeike.entity.USerInfo;
import com.zhou.meishimeike.service.OrderService;


@Service
public class OrderServiceImp implements OrderService {

	@Autowired
	OrderDao orderDao;
	
	@Override
	public boolean addOrder(OrderForm order) {
		// TODO Auto-generated method stub
		return orderDao.addOrder(order);
	}

	@Override
	public List<OrderForm> getUserOrderFromDataByUId(Integer id) {
		// TODO Auto-generated method stub
		List<OrderForm> userOrderFromDataByUId = orderDao.getUserOrderFromDataByUId(id);
		
		for (int i = 0; i < userOrderFromDataByUId.size(); i++) {
			String getoInfo = userOrderFromDataByUId.get(i).getoInfo();
			List<CommodityJson> parseArray = JSON.parseArray(getoInfo, CommodityJson.class);
			OrderForm orderForm = userOrderFromDataByUId.get(i);
			orderForm.setCommodity(parseArray);
			userOrderFromDataByUId.set(i, orderForm);
		}
		
	
		
		return userOrderFromDataByUId;
	}

	@Override
	public List<OrderForm> getUserOrderFromDataByMId(Integer id) {
		List<OrderForm> userOrderFromDataByMId = orderDao.getUserOrderFromDataByMId(id);
		
		for (int i = 0; i < userOrderFromDataByMId.size(); i++) {
			String getoInfo = userOrderFromDataByMId.get(i).getoInfo();
			List<CommodityJson> parseArray = JSON.parseArray(getoInfo, CommodityJson.class);
			OrderForm orderForm = userOrderFromDataByMId.get(i);
			
			Integer ufId = orderForm.getUfId();
			
			USerInfo uf=orderDao.getUserInfoByufId(ufId);
			
			orderForm.setuSerInfo(uf);
			
			orderForm.setCommodity(parseArray);
			userOrderFromDataByMId.set(i, orderForm);
		}
		
		return userOrderFromDataByMId;
	}

	@Override
	public boolean updateOrderDao(OrderForm o) {
		// TODO Auto-generated method stub
		return orderDao.updateOrderDao(o);
	}
	
}
