package com.zhou.meishimeike.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhou.meishimeike.dao.OrderDao;
import com.zhou.meishimeike.entity.OrderForm;
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
	
}
