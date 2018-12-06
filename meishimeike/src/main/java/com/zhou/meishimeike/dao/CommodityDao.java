package com.zhou.meishimeike.dao;

import java.util.List;

import com.zhou.meishimeike.entity.Commodity;

public interface CommodityDao {
	boolean addCommodity(Commodity c);
	List<Commodity> getCommodityBycIdList(List<Integer> l);
	boolean deletecommodityById(int id);
	boolean deletecommodityBycyId(int id);
}
