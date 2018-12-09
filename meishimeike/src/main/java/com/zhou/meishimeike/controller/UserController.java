package com.zhou.meishimeike.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhou.meishimeike.entity.CommodityJson;
import com.zhou.meishimeike.entity.USerInfo;
import com.zhou.meishimeike.entity.User;
import com.zhou.meishimeike.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	private static final Logger logger = LogManager.getLogger(UserController.class);
	//注入依赖
	@Autowired
	UserService userService;
	
	@RequestMapping("/updateUserPass")
	@ResponseBody
	public Map updateUserPass(String lodPass,String newPass,HttpServletResponse response,HttpServletRequest request) throws IOException {
		Map <String, Object> map=new HashMap<>();
		
		if(request.getSession().getAttribute("user")==null) {
			response.sendRedirect("/meishimeike");
			map.put("data", "服务器繁忙");
			return null;
		}
		User attribute = (User)request.getSession().getAttribute("user");
		
		
		boolean b =userService.updateUserPass(attribute.getId(),lodPass,newPass);
		
		if(b) {
			map.put("data",true);
		}else {
			map.put("data", "密码错误!");
		}
		return map;
	}
	
	
	@RequestMapping("/zhuxiao")
	public void zhuxiao(HttpServletResponse response,HttpServletRequest request) throws IOException {
		
		request.getSession().invalidate();
		request.getSession().setAttribute("user", null);
		request.getSession().setAttribute("userName", null);
		response.sendRedirect(request.getContextPath()+"/pages/user_login.html");
	}
	
	
	@RequestMapping("/addSite")
	@ResponseBody
	public Map addSite(HttpServletResponse response,HttpServletRequest request,String name,String phone,String site) throws IOException {
		Map <String, Object> map=new HashMap<>();
		
		if(request.getSession().getAttribute("user")==null) {
			response.sendRedirect("/meishimeike");
			return null;
		}
		User attribute = (User)request.getSession().getAttribute("user");
		
		USerInfo uSerInfo = new USerInfo();
		
		
		uSerInfo.setuId(attribute.getId());
		uSerInfo.setUfName(name);
		uSerInfo.setUfPhone(phone);
		uSerInfo.setUfSite(site);
		
		System.out.println(attribute);
		System.out.println(uSerInfo);
		
		boolean b =userService.addSite(uSerInfo);
		if(b) {
			User userByPhone = userService.getUserByPhone(phone);
			request.getSession().setAttribute("user", userByPhone);
			map.put("data", true);
		}else {
			map.put("data", "服务器繁忙");
		}
		return map;
	}
	@RequestMapping("/user_login")
	@ResponseBody
	public Map user_login(String phone,String pass,HttpServletRequest request) {
		
		logger.info("登录了");
		
		Map <String, Integer> map=new HashMap<>();
		boolean hasAdmin = userService.hasUser(phone, pass);
		if(hasAdmin) {
			
			
			List <CommodityJson> cList=(List<CommodityJson>) request.getSession().getAttribute("cList");
			
			
			if(cList!=null) {
				map.put("data", 4);
			}else {
				map.put("data", 2);
			}
			
			
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
	
	//merchant_register
	@RequestMapping("/user_register")
	@ResponseBody
	public Map userRegister(String phone,String pass,String ck,HttpServletRequest request) {
		Map <String, Object> map=new HashMap<>();
		if("".equals(phone)||"".equals(pass)||"".equals(ck)) {
			map.put("data", "请检查表单是否填写完毕");
			return map;
		}
		String ckimg=(String)request.getSession().getAttribute("ckimg");
		if(ckimg==null||!(ck.equalsIgnoreCase(ckimg))) {
			map.put("data", "验证码错误");
			return map;
		}
		boolean hasUserByPhone = userService.hasUserByPhone(phone);
		if(hasUserByPhone) {
			map.put("data", "手机号已经被注册");
			return map;
		}
		
		User user = new User();
		user.setName(phone);
		user.setPhone(phone);
		user.setPass(pass);
		boolean addUser = userService.addUser(user);
		if(addUser) {
			map.put("data", true);
		}else {
			map.put("data", "服务器繁忙");
		}
		User userByPhone = userService.getUserByPhone(phone);
		System.out.println(userByPhone);
		String name = userByPhone.getPhone();
		name=name.substring(0, 5)+"...";
		request.getSession().setAttribute("user", userByPhone);
		request.getSession().setAttribute("userName", name);
		return map;
	}
}
