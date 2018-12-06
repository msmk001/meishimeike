package com.zhou.meishimeike.controller;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.alibaba.fastjson.JSON;
import com.zhou.meishimeike.entity.ClassifyList;
import com.zhou.meishimeike.entity.CommodityJson;
import com.zhou.meishimeike.entity.Merchant;
import com.zhou.meishimeike.entity.MerchantInfo;
import com.zhou.meishimeike.entity.User;
import com.zhou.meishimeike.service.MerchantService;

@Controller
@RequestMapping("/merchant")
public class MerchantController {
	
	@Autowired
	MerchantService merchantService;
	
	@RequestMapping("/xiadan") 
	@ResponseBody
	public Map xiadan(HttpServletResponse response,HttpServletRequest request) {
		Map <String, Object> map=new HashMap<>();
		List <CommodityJson> cList=new ArrayList<>();
		Enumeration<String> parameterNames = request.getParameterNames();
		int i=1;
		for (;parameterNames.hasMoreElements();) {
			String nextElement = parameterNames.nextElement();
			String parameter2 = request.getParameter(nextElement);
			
			CommodityJson commodityJson=JSON.parseObject(parameter2,CommodityJson.class); 
			
			cList.add(commodityJson);
		}
		
		User u=(User)request.getSession().getAttribute("user");
		
		request.getSession().setAttribute("cList", cList);
		
		if(u==null) {
			map.put("data","跳转登陆");
		}else {
			
			map.put("data","跳转确认订单");
		}
		return map;
		
	}
	//getIndnxDate
	@RequestMapping("/mdata") 
	public void getIndnxDate(HttpServletResponse response,HttpServletRequest request) throws ServletException, IOException {
		List<Merchant> list = merchantService.getIndexData();
		request.setAttribute("merchantIndexData",list);
		
		request.getRequestDispatcher("/pages/indexs.jsp").forward(request, response);
	}
	
	//openInfo
	@RequestMapping("/openInfo") 
	public void openInfo(int id,HttpServletResponse response,HttpServletRequest request) throws IOException {
		Merchant m=merchantService.getMerchantById(id);
		
		request.getSession().setAttribute("merchantData", m);
		
		response.sendRedirect(request.getContextPath()+"/pages/merchant_info.jsp");
	}
	
	@RequestMapping("/zhuxiao")
	public void zhuxiao(HttpServletResponse response,HttpServletRequest request) throws IOException {
		
		request.getSession().invalidate();
		response.sendRedirect(request.getContextPath()+"/pages/merchant_login.html");
	}
	
	
	@RequestMapping("/merchant_login")
	@ResponseBody
	public Map merchantLogin(String phone,String pass,HttpServletRequest request,HttpServletResponse res) throws IOException {
		Map <String, Object> map=new HashMap<>();
		boolean hasAdmin = merchantService.hasUser(phone, pass);
		
		if(hasAdmin) {
			int selectCodeByPhone = merchantService.selectCodeByPhone(phone);
			
			int mId = merchantService.getIdByPhone(phone);
			request.getSession().setAttribute("mId",mId);
			if(selectCodeByPhone==0) {
				//进入提交资料
				map.put("data", 1);
			}else if(selectCodeByPhone==1) {
				//进入等待页面
				map.put("data", 2);
			}else if(selectCodeByPhone==2) {
				
				Merchant m=merchantService.getMerchantById(mId);
				
				request.getSession().setAttribute("merchantData", m);
				
				//进入后台
				map.put("data", 3);
			}else {
				map.put("data", "服务器繁忙");
			}
			
		}else {
			map.put("data", "账号或者密码错误");
		}
		return map;
	}

	
	@RequestMapping("/merchant_register")
	@ResponseBody
	public Map merchantRegister(String phone,String pass,String ck,HttpServletRequest request) {
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
		boolean hasUserByPhone = merchantService.hasMerchantByPhone(phone);
		if(hasUserByPhone) {
			map.put("data", "手机号已经被注册");
			return map;
		}

		boolean addMerchant = merchantService.addMerchant(phone, pass);
		if(addMerchant) {
			map.put("data", true);
			int selectCodeByPhone = merchantService.selectCodeByPhone(phone);
			Integer idByPhone = merchantService.getIdByPhone(phone);
			request.getSession().setAttribute("mId",idByPhone);
		}else {
			map.put("data", "服务器繁忙");
		}
		return map;
	}
	
	@RequestMapping("/deleteClassifyList")
	@ResponseBody 
	public Map deleteClassifyList(int id,HttpServletRequest request,HttpServletResponse res) throws IOException {
		Map <String, Object> map=new HashMap<>();
		boolean b=merchantService.deleteClassifyById(id);
		if(b) {
			if(request.getSession().getAttribute("mId")==null) {
				res.sendRedirect(request.getContextPath()+"/pages/merchant_login.html");
			}
			int mId = (int)request.getSession().getAttribute("mId");
			Merchant m=merchantService.getMerchantById(mId);
			request.getSession().setAttribute("merchantData", m);
			map.put("data", true);
		}else {
			map.put("data", "服务器繁忙");
		}
		return map;
	}
	
	//addClassifyList 
	@RequestMapping("/addClassifyList")
	@ResponseBody
	public Map addClassifyList(int id,String name,HttpServletRequest request,HttpServletResponse res) throws IOException {
		Map <String, Object> map=new HashMap<>();
		ClassifyList classifyList = new ClassifyList();
		classifyList.setmId(id);
		classifyList.setcName(name);
		boolean addClassifyList = merchantService.addClassifyList(classifyList);
		if(addClassifyList) {
			if(request.getSession().getAttribute("mId")==null) {
				res.sendRedirect(request.getContextPath()+"/pages/merchant_login.html");
			}
			
			int mId = (int)request.getSession().getAttribute("mId");
			
			Merchant m=merchantService.getMerchantById(mId);
			request.getSession().setAttribute("merchantData", m);
			map.put("data", true);
			
		}else {
			map.put("data", "服务器繁忙");
		}
		return map;
	}
	
	@RequestMapping("/merchant_update")
	@ResponseBody
	public Map merchant_update (String phone,String name,String mName,
			String mType,@RequestParam("imgIdCar")CommonsMultipartFile imgIdCar,
			@RequestParam("imgIndoor")CommonsMultipartFile imgIndoor,@RequestParam("imgLicense")CommonsMultipartFile imgLicense,
			@RequestParam("logo")CommonsMultipartFile logo,@RequestParam("permission")CommonsMultipartFile permission
			,@RequestParam("appearance")CommonsMultipartFile appearance,
			double mlng,double mlat,HttpServletRequest request) 
					throws IOException {
		Map <String, Object> map=new HashMap<>();
		MerchantInfo merchantInfo = new MerchantInfo();
		
		
		if("".equals(phone)||"".equals(name)||"".equals(mName)) {
			map.put("data", "请检查全部信息已经填写完");
			return map;
		}
		if(imgIdCar.getSize()==0||imgIndoor.getSize()==0||imgLicense.getSize()==0||logo.getSize()==0||permission.getSize()==0||appearance.getSize()==0) {
			map.put("data", "请检查是否已经上传全部图片");
			return map;
		}
		Integer mid=(Integer)request.getSession().getAttribute("mId");
		
		if(mid==null) {
			map.put("data", "服务器繁忙");
			return map;
		}
		
		System.out.println(imgIndoor.getOriginalFilename());
		
		merchantInfo.setmId(mid);
		
		merchantInfo.setPhone(phone);
		merchantInfo.setName(name);
		merchantInfo.setmName(mName);
		merchantInfo.setmType(mType);
		
		merchantInfo.setmImgIdCar(saveFileFromInputStream(imgIdCar,request));
		merchantInfo.setmImgIndoor(saveFileFromInputStream(imgIndoor,request));
		merchantInfo.setmLogo(saveFileFromInputStream(logo,request));
		merchantInfo.setmAppearance(saveFileFromInputStream(appearance,request));
		merchantInfo.setmPermission(saveFileFromInputStream(permission,request));
		merchantInfo.setmImgLicense(saveFileFromInputStream(imgLicense,request));
		
		merchantInfo.setmLng(mlng);
		merchantInfo.setmLat(mlat);
		
		boolean addMerchantInfo = merchantService.addMerchantInfo(merchantInfo);
		
		if(addMerchantInfo) {
			map.put("data", true);
			merchantService.updateCodeById(mid, 1);
		}else {
			map.put("data", "服务器繁忙");
		}
		
		return map;
	}
	
	public String saveFileFromInputStream(CommonsMultipartFile file,HttpServletRequest request) throws IOException {
		
		String randStr=UUID.randomUUID().toString();
		
		String filename = URLEncoder.encode(file.getOriginalFilename(), "utf-8");
		
		if("".equals(filename)) {
			return null;
		}
		
		String suffix=filename.substring(filename.lastIndexOf("."));
		
		InputStream inputStream = file.getInputStream();
		
		String realPath =request.getSession().getServletContext().getRealPath("/pages/img");	
		
		String resultName=randStr+suffix;
		
		DataInputStream dataInputStream = new DataInputStream(inputStream);
		
		DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(realPath + "/" + resultName));
		byte[] buffer = new byte[10];
		for (int len = 0; (len = dataInputStream.read(buffer)) != -1;) {
			dataOutputStream.write(buffer, 0, len);
			dataOutputStream.flush();
		}
		dataOutputStream.close();
		dataInputStream.close();
		
		return resultName;
	}
}
