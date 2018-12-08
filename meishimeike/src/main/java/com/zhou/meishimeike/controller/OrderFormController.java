package com.zhou.meishimeike.controller;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.zhou.meishimeike.entity.CommodityJson;
import com.zhou.meishimeike.entity.Merchant;
import com.zhou.meishimeike.entity.OrderForm;
import com.zhou.meishimeike.entity.User;
import com.zhou.meishimeike.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderFormController {

	@Autowired
	OrderService orderService;

	@RequestMapping("/goPay")
	public void goPay(HttpServletResponse response, HttpServletRequest request, String usersite) throws IOException {

		if ("".equals(usersite) || usersite == null) {
			response.sendRedirect(request.getContextPath());
		}
		int usersiteInt = Integer.valueOf(usersite);

		OrderForm orderForm = (OrderForm) request.getSession().getAttribute("morder");
		orderForm.setUfId(usersiteInt);
		boolean b = orderService.addOrder(orderForm);
		request.getSession().setAttribute("morder", orderForm);
		response.sendRedirect(request.getContextPath() + "/alipay?command=payment");
	}

	@RequestMapping("/open_merchant_order")
	public void open_merchant_order(HttpServletResponse response, HttpServletRequest request)
			throws IOException, ServletException {
		Merchant m = (Merchant) request.getSession().getAttribute("merchantData");
		if (m == null) {
			response.sendRedirect("/meishimeike/pagesmerchant_login.html");
			return;
		}
		List<OrderForm> list01 = orderService.getUserOrderFromDataByMId(m.getId());

		request.setAttribute("merchantOrderFormData", list01);

		request.getRequestDispatcher("/pages/merchant_order.jsp").forward(request, response);
	}

	@RequestMapping("/open_user_order")
	public void openOrder(HttpServletResponse response, HttpServletRequest request)
			throws ServletException, IOException {

		User user = (User) request.getSession().getAttribute("user");
		if (user == null) {
			response.sendRedirect("/meishimeike/pages/user_login.html");
			return;
		}
		List<OrderForm> list01 = orderService.getUserOrderFromDataByUId(user.getId());

		request.setAttribute("userOrderFormData", list01);

		request.getRequestDispatcher("/pages/user_order.jsp").forward(request, response);

	}

	@RequestMapping("/addOrder")
	void addOrder(HttpServletResponse response, HttpServletRequest request) throws IOException {

		User u = (User) request.getSession().getAttribute("user");
		Merchant m = (Merchant) request.getSession().getAttribute("merchantData");
		List<CommodityJson> cList = (List<CommodityJson>) request.getSession().getAttribute("cList");

		OrderForm order = new OrderForm();
		order.setuId(u.getId());
		order.setmId(m.getId());

		StringBuffer stringBuffer = new StringBuffer();
		double amout = 0;
		for (CommodityJson commodityJson : cList) {
			amout += commodityJson.getPice() * commodityJson.getNum();
		}

		String tradeNo = UUID.randomUUID().toString().replaceAll("-", "");

		order.setoTradeNo(tradeNo);
		order.setoInfo(JSON.toJSONString(cList));
		order.setoPrice(amout + 3);

		request.getSession().setAttribute("morder", (order));

		response.sendRedirect(request.getContextPath() + "/pages/user_in_zhifu.jsp");
	}
}
