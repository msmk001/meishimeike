package com.zhou.meishimeike.controller;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.zhou.meishimeike.entity.Commodity;
import com.zhou.meishimeike.entity.Merchant;
import com.zhou.meishimeike.service.CommodityService;
import com.zhou.meishimeike.service.MerchantService;

@Controller
@RequestMapping("commodity")
public class CommodityController {

	@Autowired
	CommodityService commodityService;
	
	@Autowired
	MerchantService merchantService;
	
	@RequestMapping("addCommodity")
	public void addCommodity(int id, @RequestParam("cyImg") CommonsMultipartFile cyImg, String cyName,
			double cPrice, String cyRemark, HttpServletRequest request, HttpServletResponse res) throws IOException {
		Commodity commodity = new Commodity();
		commodity.setcId(id);
		commodity.setCyName(cyName);
		commodity.setCyImg(saveFileFromInputStream(cyImg,request));
		commodity.setcPrice(cPrice);
		commodity.setCyRemark(cyRemark);
		boolean addCommodity = commodityService.addCommodity(commodity);
		
		if(request.getSession().getAttribute("mId")==null) {
			res.sendRedirect(request.getContextPath()+"/pages/merchant_login.html");
		}
		
		int mId = (int)request.getSession().getAttribute("mId");
		
		Merchant m=merchantService.getMerchantById(mId);
		request.getSession().setAttribute("merchantData", m);
		
		res.sendRedirect("/meishimeike/pages/merchant_manage.jsp");
	}

	public String saveFileFromInputStream(CommonsMultipartFile file, HttpServletRequest request) throws IOException {

		String randStr = UUID.randomUUID().toString();

		String filename = URLEncoder.encode(file.getOriginalFilename(), "utf-8");

		if ("".equals(filename)) {
			return null;
		}

		String suffix = filename.substring(filename.lastIndexOf("."));

		InputStream inputStream = file.getInputStream();

		String realPath = request.getSession().getServletContext().getRealPath("/pages/img");

		String resultName = randStr + suffix;

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
