package com.zhou.meishimeike.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhou.meishimeike.entity.AdminData;
import com.zhou.meishimeike.entity.Merchant;
import com.zhou.meishimeike.service.AdminService;
import com.zhou.meishimeike.service.MerchantService;
import com.zhou.meishimeike.service.UserService;
import com.zhou.meishimeike.util.PageUtil;

@Controller
@RequestMapping("/admin")
public class AdminConroller {

	@Autowired
	MerchantService merchantService;
	@Autowired
	AdminService adminService;
	@Autowired
	UserService userService;

	@RequestMapping("/l")
	public void login(HttpServletResponse response, HttpServletRequest request) throws IOException {
		response.sendRedirect(request.getContextPath()+"/pages/admin_login.html");
	}
	
	@RequestMapping("/paging")
	public void paging(HttpServletResponse response, HttpServletRequest request, String pageNo)
			throws IOException, ServletException {
		int thisPage = 0;
		if (null != pageNo) {
			thisPage = Integer.parseInt(pageNo);
		} else {
			thisPage = 1;
		}
		PageUtil<Merchant> allMemoByName = merchantService.getAllMerchant(thisPage);
		
		AdminData aData=adminService.getAdminData();
		
		request.setAttribute("aData", aData);
		
		request.setAttribute("PageUtil", allMemoByName);

		request.getRequestDispatcher("/pages/admin_index.jsp").forward(request, response);
		
	}

	@RequestMapping("/admin_login")
	@ResponseBody
	public Map admin_login(@RequestParam("name")String name,@RequestParam("pass")String pass,HttpServletRequest request) {
		
		
		
		Map<String, Integer> map = new HashMap<>();
		boolean hasAdmin = userService.hasAdmin(name, pass);
		if (hasAdmin) {
			map.put("data", 2);
			request.getSession().setAttribute("adminName", name);
			
		} else {
			map.put("data", 3);
		}
		return map;
	}

	
	
	@RequestMapping("/open_merchant")
	public void open_merchant(HttpServletResponse response,String id,HttpServletRequest request) throws IOException {
		
		Merchant m=merchantService.getDataMerchantById(id);
		System.out.println(m);
		
		request.getSession().setAttribute("merchantData", m);
		response.sendRedirect(request.getContextPath() + "/pages/admin_verify.jsp");
	}
	
	@RequestMapping("/pass_merchant")
	public void  pass_merchant(HttpServletResponse response,@RequestParam("id")int id,HttpServletRequest request) throws IOException {
		merchantService.updateCodeById(id, 2);
		response.sendRedirect(request.getContextPath() + "/admin/paging?pageNo=1");
	}
}
