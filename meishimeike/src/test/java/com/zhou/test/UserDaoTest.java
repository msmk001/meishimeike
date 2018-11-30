package com.zhou.test;

import com.zhou.meishimeike.dao.UserDao;
import com.zhou.meishimeike.entity.User;

public class UserDaoTest {
	
	
	public static void main(String[] args) {
		/*test02();*/
		test01();
	}

	public static void test01() {
		UserDao testMapper = SqlSessionFactoryUtil.getTestMapper(UserDao.class);
		User userByName = testMapper.getUserByPhone("15123232042");
		System.out.println(userByName);
	}

	public static void test02() {
		
		UserDao testMapper = SqlSessionFactoryUtil.getTestMapper(UserDao.class);
		boolean hasAdmin = testMapper.hasAdmin("admin", "123456");
		System.out.println(hasAdmin);
	}

	public static void test03() {

	}

	public static void test04() {

	}

	public static void test05() {

	}

	public static void test06() {

	}

	public static void test07() {

	}
}
