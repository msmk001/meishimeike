package com.zhou.meishimeike.dao;

import java.util.List;

import com.zhou.meishimeike.entity.ClassifyList;
import com.zhou.meishimeike.entity.Merchant;
import com.zhou.meishimeike.entity.MerchantInfo;

public interface MerchantDao {
	boolean hasMerchant(String phone, String pass);
	
	boolean addMerchant(String phone,String pass);
	
	
	boolean addMerchantInfo(MerchantInfo info);
	
	
	boolean hasMerchantByPhone(String phone);
	
	int selectCodeByPhone(String phone);
	
	int getIdByPhone(String phone);
	
	
	/* code=0 未提交资料
	 * code=1  提交了资料审核中
	 * code=2  提交了资料审核通过
	 */
	boolean updateCodeById(Integer id,Integer code);
	
	
	Integer getAllMerchantIndexCount();

	List<Merchant> getAllMerchant(Integer subStart, Integer pagesize);

	Merchant getMerchantById(int id);
	
	List<ClassifyList> getClassifyListById(int id);
	
	boolean addClassifyList(ClassifyList c);

	Merchant getDataMerchantById(String id);

	boolean deleteClassifyById(int id); 
}
