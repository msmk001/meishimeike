package com.zhou.meishimeike.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhou.meishimeike.entity.User;
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
	
	
	@RequestMapping("/zhuxiao")
	public void zhuxiao(HttpServletResponse response,HttpServletRequest request) throws IOException {
		
		request.getSession().invalidate();
		request.getSession().setAttribute("user", null);
		request.getSession().setAttribute("userName", null);
		response.sendRedirect(request.getContextPath()+"/pages/user_login.html");
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
	public Map user_login(@Param("phone")String phone,@Param("pass")String pass,HttpServletRequest request) {
		Map <String, Integer> map=new HashMap<>();
		boolean hasAdmin = userService.hasUser(phone, pass);
		if(hasAdmin) {
			map.put("data", 2);
			User userByPhone = userService.getUserByPhone(phone);
			String name = userByPhone.getPhone();
			name=name.substring(0, 5)+"...";
			request.getSession().setAttribute("user", userByPhone);
			request.getSession().setAttribute("userName", name);
		}else {
			map.put("data", 3);
		}
		return map;
	}
	
	
}
