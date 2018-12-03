package com.zhou.meishimeike.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhou.meishimeike.entity.User;
import com.zhou.meishimeike.service.MerchantService;

@Controller
@RequestMapping("/merchant")
public class MerchantController {
	
	@Autowired
	MerchantService merchantService;
	
	@RequestMapping("/merchant_login")
	@ResponseBody
	public Map merchantLogin(@Param("phone")String phone,@Param("pass")String pass,HttpServletRequest request) {
		Map <String, Integer> map=new HashMap<>();
		boolean hasAdmin = merchantService.hasUser(phone, pass);
		
		if(hasAdmin) {
			map.put("data", 2);
			
		}else {
			map.put("data", 3);
		}
		return map;
	}
	//register
	
	@RequestMapping("/merchant_register")
	@ResponseBody
	public Map merchantRegister(@Param("phone")String phone,@Param("pass")String pass) {
		Map <String, Object> map=new HashMap<>();
		boolean hasAdmin = merchantService.addMerchant(phone, pass);
		if(hasAdmin) {
			map.put("data", true);
		}else {
			map.put("data", "错误");
		}
		return map;
	}
	
}
