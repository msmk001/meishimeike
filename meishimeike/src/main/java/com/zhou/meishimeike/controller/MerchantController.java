package com.zhou.meishimeike.controller;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.zhou.meishimeike.entity.Merchant;
import com.zhou.meishimeike.entity.MerchantInfo;
import com.zhou.meishimeike.service.MerchantService;

@Controller
@RequestMapping("/merchant")
public class MerchantController {
	
	@Autowired
	MerchantService merchantService;
	
	@RequestMapping("/merchant_login")
	@ResponseBody
	public Map merchantLogin(@Param("phone")String phone,@Param("pass")String pass,HttpServletRequest request) {
		Map <String, Object> map=new HashMap<>();
		boolean hasAdmin = merchantService.hasUser(phone, pass);
		
		if(hasAdmin) {
			int selectCodeByPhone = merchantService.selectCodeByPhone(phone);
			Integer idByPhone = merchantService.getIdByPhone(phone);
			request.getSession().setAttribute("mId",idByPhone);
			if(selectCodeByPhone==0) {
				//提交资料
				map.put("data", 1);
			}else if(selectCodeByPhone==1) {
				//进入后台
				map.put("data", 2);
			}else {
				map.put("data", "服务器繁忙");
			}
			
		}else {
			map.put("data", "账号或者密码错误");
		}
		return map;
	}
	//register
	
	@RequestMapping("/merchant_register")
	@ResponseBody
	public Map merchantRegister(@Param("phone")String phone,@Param("pass")String pass,@Param("ck")String ck,HttpServletRequest request) {
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
	
	
	@RequestMapping("/merchant_update")
	@ResponseBody
	public Map merchant_update (@Param("phone")String phone,@Param("name")String name,@Param("mName")String mName,
			@Param("mType")String mType,@RequestParam("imgIdCar") CommonsMultipartFile imgIdCar,
			@RequestParam("imgIndoor") CommonsMultipartFile imgIndoor,@RequestParam("imgLicense") CommonsMultipartFile imgLicense,
			@RequestParam("logo") CommonsMultipartFile logo,@RequestParam("permission") CommonsMultipartFile permission
			,@RequestParam("appearance") CommonsMultipartFile appearance,
			@Param("mlng")double mlng,@Param("mlat")double mlat,HttpServletRequest request) throws IOException {
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
			merchantService.updateCodeById(mid);
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
