package com.zhou.meishimeike.service;

import com.zhou.meishimeike.entity.User;

public interface UserService {
	public int getAllUserCount();
	public boolean hasAdmin(String name,String pass);
	public boolean hasUser(String phone, String pass);
	public  User getUserByPhone(String Phone);
}
