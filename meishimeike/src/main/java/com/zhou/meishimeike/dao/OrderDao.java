package com.zhou.meishimeike.dao;

import java.util.List;

import com.zhou.meishimeike.entity.OrderForm;
import com.zhou.meishimeike.entity.USerInfo;

public interface OrderDao {
	boolean addOrder(OrderForm order);
	boolean updateOrderCode();
	List<OrderForm> getUserOrderFromDataByUId(Integer id);
	List<OrderForm> getUserOrderFromDataByMId(Integer id);
	USerInfo getUserInfoByufId(Integer ufId);
}
