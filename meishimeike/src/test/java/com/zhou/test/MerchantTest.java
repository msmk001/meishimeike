package com.zhou.test;

import java.util.List;

import com.zhou.meishimeike.dao.MerchantDao;
import com.zhou.meishimeike.entity.Merchant;

public class MerchantTest {
	public static void main(String[] args) {
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
