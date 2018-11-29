package com.zhou.test;

import com.zhou.meishimeike.dao.UserDao;
import com.zhou.meishimeike.entity.User;

public class UserDaoTest {
	public static void main(String[] args) {
		test02() ;
	}
	public static void test01() {
		
	}
	public static void test02() {
		UserDao testMapper = SqlSessionFactoryUtil.getTestMapper(UserDao.class);
		boolean hasAdmin = testMapper.hasAdmin("admin","123456");
		System.out.println(hasAdmin);
	}
}
