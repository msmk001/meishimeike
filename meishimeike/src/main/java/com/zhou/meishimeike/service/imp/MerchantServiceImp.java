package com.zhou.meishimeike.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhou.meishimeike.dao.MerchantDao;
import com.zhou.meishimeike.entity.ClassifyList;
import com.zhou.meishimeike.entity.Merchant;
import com.zhou.meishimeike.entity.MerchantInfo;
import com.zhou.meishimeike.service.MerchantService;
import com.zhou.meishimeike.util.PageUtil;


@Service
public class MerchantServiceImp implements MerchantService {
	
	@Autowired
	MerchantDao merchantDao;
	
	
	@Override
	public boolean hasUser(String phone, String pass) {
		
		return merchantDao.hasMerchant(phone, pass);
	}


	@Override
	public boolean addMerchant(String phone, String pass) {
		// TODO Auto-generated method stub
		return merchantDao.addMerchant(phone, pass);
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
		// TODO Auto-generated method stub
		Merchant merchantById = merchantDao.getMerchantById(id);
		
		List<ClassifyList> classifyListById = merchantDao.getClassifyListById(id);
		
		merchantById.setClassifyList(classifyListById);
		
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


	@Override
	public boolean deleteClassifyById(int id) {
		// TODO Auto-generated method stub
		return merchantDao.deleteClassifyById(id);
	}

}
