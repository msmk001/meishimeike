package com.zhou.meishimeike.controller;

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
	public String test01(@Param("name")String name,@Param("pass")String pass) {
		String result=null;
		userService.hasAdmin(name, pass);
		return result;
	}
	
}
