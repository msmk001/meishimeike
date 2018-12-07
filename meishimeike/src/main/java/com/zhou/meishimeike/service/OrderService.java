package com.zhou.meishimeike.service;

import java.util.List;

import com.zhou.meishimeike.entity.OrderForm;

public interface OrderService {

	boolean addOrder(OrderForm order);

	List<OrderForm> getUserOrderFromDataByUId(Integer id);

	List<OrderForm> getUserOrderFromDataByMId(Integer id);
	
	
}
