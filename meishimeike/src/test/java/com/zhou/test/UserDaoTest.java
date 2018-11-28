package com.zhou.test;

import com.zhou.meishimeike.dao.UserDao;
import com.zhou.meishimeike.entity.User;

public class UserDaoTest {
	public static void main(String[] args) {
		UserDao testMapper = SqlSessionFactoryUtil.getTestMapper(UserDao.class);
		User userEntity = new User();
		userEntity.setName("小红");
		userEntity.setPass("122");
		int allUserCount = testMapper.getAllUserCount();
		System.out.println(allUserCount);
	}
}
