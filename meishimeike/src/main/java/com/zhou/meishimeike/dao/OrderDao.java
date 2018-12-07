package com.zhou.meishimeike.dao;

import com.zhou.meishimeike.entity.OrderForm;

public interface OrderDao {
	boolean addOrder(OrderForm order);
	boolean updateOrderCode();
}
