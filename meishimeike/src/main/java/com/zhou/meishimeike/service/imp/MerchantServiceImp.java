package com.zhou.meishimeike.service.imp;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhou.meishimeike.dao.CommodityDao;
import com.zhou.meishimeike.dao.MerchantDao;
import com.zhou.meishimeike.entity.ClassifyList;
import com.zhou.meishimeike.entity.Commodity;
import com.zhou.meishimeike.entity.Merchant;
import com.zhou.meishimeike.entity.MerchantInfo;
import com.zhou.meishimeike.service.MerchantService;
import com.zhou.meishimeike.util.PageUtil;


@Service
public class MerchantServiceImp implements MerchantService {
	
	@Autowired
	MerchantDao merchantDao;
	
	@Autowired
	CommodityDao commodityDao;
	
	@Override
	public boolean hasUser(String phone, String pass) {
		
		return merchantDao.hasMerchant(phone, pass);
	}





	@Override
	public boolean addMerchantInfo(MerchantInfo info) {
		// TODO Auto-generated method stub
		return merchantDao.addMerchantInfo(info);
	}


	@Override
	public boolean hasMerchantByPhone(String phone) {
		// TODO Auto-generated method stub
		return merchantDao.hasMerchantByPhone(phone);
	}


	@Override
	public int selectCodeByPhone(String phone) {
		// TODO Auto-generated method stub
		return merchantDao.selectCodeByPhone(phone);
	}


	@Override
	public int getIdByPhone(String phone) {
		// TODO Auto-generated method stub
		return merchantDao.getIdByPhone(phone);
	}


	@Override
	public boolean updateCodeById(Integer id,Integer code) {
		// TODO Auto-generated method stub
		return merchantDao.updateCodeById(id,code);
	}


	@Override
	public PageUtil<Merchant> getAllMerchant(int pageNo) {
		
		PageUtil<Merchant> pageUtil = new PageUtil<Merchant>();
		
		pageUtil.setPageNo(pageNo);
		
		Integer allBlogIndexCount = merchantDao.getAllMerchantIndexCount();
		
		
		pageUtil.setIndexCount(allBlogIndexCount);
		
		List<Merchant> all = merchantDao.getAllMerchant(pageUtil.getSubStart(), pageUtil.getPagesize());
		
		
		pageUtil.setList(all);
		
		return pageUtil;
	}


	@Override
	public Merchant getMerchantById(int id) {
		
		
		Merchant merchantById = merchantDao.getMerchantById(id);
		
		
		List<ClassifyList> classifyListById = merchantDao.getClassifyListById(id);
		
		
		ArrayList<Integer> arrayList = new ArrayList<>();
		
		for (ClassifyList classifyList : classifyListById) {
			arrayList.add(classifyList.getcId());
		}
		List<Commodity> list=null;
		if(arrayList.size()>0) {
			list=commodityDao.getCommodityBycIdList(arrayList);
		}
		
		merchantById.setClassifyList(classifyListById);
		
		merchantById.setCommodity(list);
		
		return merchantById;
	}


	@Override
	public boolean addClassifyList(ClassifyList c) {
		// TODO Auto-generated method stub
		return merchantDao.addClassifyList(c);
	}


	@Override
	public Merchant getDataMerchantById(String id) {
		// TODO Auto-generated method stub
		return merchantDao.getDataMerchantById(id);
	}


	
	/**
	 * 删除目录加删除目录下的商品
	 */
	@Override
	public boolean deleteClassifyById(int id) {
		
		boolean deletecommodityById = commodityDao.deletecommodityById(id);
		boolean deleteClassifyById = merchantDao.deleteClassifyById(id);
		
		return deleteClassifyById;
	}


	@Override
	public List<Merchant> getIndexData() {
		// TODO Auto-generated method stub
		return merchantDao.getIndexData();
	}





	@Override
	public boolean addMerchant(Merchant m) {
		// TODO Auto-generated method stub
		return merchantDao.addMerchant(m);
	}




}
