package com.zhou.meishimeike.dao;

public interface UserDao {
	public int getAllUserCount();
	public boolean hasAdmin(String name,String pass);
}
