package com.zhou.meishimeike.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhou.meishimeike.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService userService;
	
	@RequestMapping("/test")
	@ResponseBody
	public String test() {
		return "ok"+userService.getAllUserCount();
	}
	
	@RequestMapping("/admin_login")
	@ResponseBody
	public Map test01(@Param("name")String name,@Param("pass")String pass) {
		Map <String, Integer> map=new HashMap<>();
		boolean hasAdmin = userService.hasAdmin(name, pass);
		if(hasAdmin) {
			map.put("data", 2);
		}else {
			map.put("data", 3);
		}
		return map;
	}
	
	@RequestMapping("/user_login")
	@ResponseBody
	public Map user_login(@Param("phone")String phone,@Param("pass")String pass) {
		Map <String, Integer> map=new HashMap<>();
		boolean hasAdmin = userService.hasUser(phone, pass);
		if(hasAdmin) {
			map.put("data", 2);
		}else {
			map.put("data", 3);
		}
		return map;
	}
	
	
}
