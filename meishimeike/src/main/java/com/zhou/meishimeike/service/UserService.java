package com.zhou.meishimeike.service;

import java.util.List;

import com.zhou.meishimeike.entity.USerInfo;
import com.zhou.meishimeike.entity.User;

public interface UserService {
	int getAllUserCount();
	boolean hasAdmin(String name,String pass);
	boolean hasUser(String phone, String pass);
	User getUserByPhone(String Phone);
	boolean addUser(User u);
	boolean hasUserByPhone(String phone);
	boolean addSite(USerInfo uSerInfo);
	boolean updateUserPass(Integer id, String lodPass, String newPass);
	List <USerInfo>  getUserById(User attribute);
}
