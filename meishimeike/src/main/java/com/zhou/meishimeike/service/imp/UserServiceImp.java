package com.zhou.meishimeike.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhou.meishimeike.dao.UserDao;
import com.zhou.meishimeike.service.UserService;


@Service
public class UserServiceImp implements UserService {

	@Autowired
	UserDao userDao;
	
	@Override
	public int getAllUserCount() {
		// TODO Auto-generated method stub
		return userDao.getAllUserCount();
	}

	@Override
	public boolean hasAdmin(String name, String pass) {
		// TODO Auto-generated method stub
		return userDao.hasAdmin(name, pass);
	}

	@Override
	public boolean hasUser(String phone, String pass) {
		// TODO Auto-generated method stub
		return userDao.hasUser(phone, pass);
	}
}
