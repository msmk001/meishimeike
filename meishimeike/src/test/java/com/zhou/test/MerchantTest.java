package com.zhou.test;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.zhou.meishimeike.dao.MerchantDao;
import com.zhou.meishimeike.entity.Merchant;

public class MerchantTest {
	
	private static final Logger logger = LogManager.getLogger(MerchantTest.class);
	
	public static void main(String[] args) {
		logger.info("ok");
		test05();
	}
	public static void test03() {
		MerchantDao testMapper = SqlSessionFactoryUtil.getTestMapper(MerchantDao.class);
		List<Merchant> allMerchant = testMapper.getAllMerchant(0, 10);
		System.out.println("l"+allMerchant);
	}
	public static void test04() {
		MerchantDao testMapper = SqlSessionFactoryUtil.getTestMapper(MerchantDao.class);
		Integer allMerchantIndexCount = testMapper.getAllMerchantIndexCount();
		System.out.println(": "+allMerchantIndexCount);
	}
	public static void test05() {
		MerchantDao testMapper = SqlSessionFactoryUtil.getTestMapper(MerchantDao.class);
		
		Merchant merchantById = testMapper.getMerchantById(7);
		System.out.println(": "+merchantById.getClassifyList());
		
		
	}
}
