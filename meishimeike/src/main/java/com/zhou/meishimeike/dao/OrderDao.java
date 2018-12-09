package com.zhou.meishimeike.dao;

import java.util.List;

import com.zhou.meishimeike.entity.OrderForm;
import com.zhou.meishimeike.entity.USerInfo;

public interface OrderDao {
	boolean addOrder(OrderForm order);
	List<OrderForm> getUserOrderFromDataByUId(Integer id);
	List<OrderForm> getUserOrderFromDataByMId(Integer id);
	USerInfo getUserInfoByufId(Integer ufId);
	
	
	
	//支付宝回调,成功后修改定订单为以支付
	boolean updateOrderDao(OrderForm o);
	
}
