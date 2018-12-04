package com.zhou.meishimeike.service;

import com.zhou.meishimeike.entity.User;

public interface UserService {
	int getAllUserCount();
	boolean hasAdmin(String name,String pass);
	boolean hasUser(String phone, String pass);
	User getUserByPhone(String Phone);
	boolean addUser(User u);
	boolean hasUserByPhone(String phone);
}
