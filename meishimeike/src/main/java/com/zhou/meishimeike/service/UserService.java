package com.zhou.meishimeike.service;

public interface UserService {
	public int getAllUserCount();
	public boolean hasAdmin(String name,String pass);
	public boolean hasUser(String phone, String pass);
	
}
