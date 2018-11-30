package com.zhou.meishimeike.dao;

import com.zhou.meishimeike.entity.User;

public interface UserDao {
	
	public int getAllUserCount();
	public boolean hasAdmin(String name,String pass);
	public boolean hasUser(String phone, String pass);
	public  User getUserByPhone(String Phone);
	
}
