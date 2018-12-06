package com.zhou.meishimeike.service;

import com.zhou.meishimeike.entity.Commodity;

public interface CommodityService {
	boolean addCommodity(Commodity c);

	boolean deleteCommodityById(int id);

	boolean deleteCommodityBycyId(int id);
}
