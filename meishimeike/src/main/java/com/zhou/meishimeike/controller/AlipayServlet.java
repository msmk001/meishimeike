package com.zhou.meishimeike.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradeWapPayRequest;
import com.maguor.pay.model.AliPayMent;
import com.maguor.pay.service.AlipayService;
import com.maguor.pay.service.impl.AlipayServiceImpl;
import com.zhou.meishimeike.util.CheckMobile;

@Controller

public class AlipayServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	// 支付指令
	private final String PAYMENT = "payment";
	// 交易查询指令
	private final String TRADE_QUERY = "tradeQuery";
	// 交易退款指令
	private final String TRADE_REFUND = "tradeRefund";
	// 交易退款查询指令
	private final String TRADE_REFUND_QUERY = "tradeRefundQuery";
	// 交易关闭指令
	private final String TRADE_CLOSE = "tradeClose";
	// 异常回调指令
	private final String NOTIFY_URL = "notifyUrl";
	// 成功回调指令
	private final String RETURN_URL = "returnUrl";

	@Override
	@RequestMapping("/alipay")
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String command = req.getParameter("command");
		switch (command) {
		case PAYMENT:
			/*boolean phone = CheckMobile.isPhone(req.getHeader("USER-AGENT"));
			if(phone) {
				wapPay(req, resp);
			}else {*/
				tradePayment(req, resp);
			//	}
			
			break;
		case TRADE_QUERY:
			break;
		case TRADE_REFUND:
			break;
		case TRADE_REFUND_QUERY:
			break;
		case TRADE_CLOSE:
			break;
		case NOTIFY_URL:
			break;
		case RETURN_URL:
			break;
		default:
			throw new RuntimeException("没有匹配的指定command.");
		}
	}

	/**
	 * <pre>
	 * <h1>付款</h1>
	 * &#64;param aliPayMent
	 * &#64;return
	 * 请求参数：
	 * 1) 商户订单号:商户网站订单系统中唯一订单号，必填
	 *    aliPayMent.setOutTradeNo(String str)
	 * 2) 付款金额：必填
	 *    aliPayMent.setTotalAmount(String str)
	 * 3) 订单名称：必填
	 *    aliPayMent.setSubject(String str)
	 * 4) 商品描述：可空 
	 *    aliPayMent.setBody(String str)
	 * 说明：请求参数可查阅【电脑网站支付的API文档-alipay.trade.page.pay-请求参数】章节
	 * </pre>
	 */
	public void tradePayment(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		AlipayService alipayService = new AlipayServiceImpl();
		AliPayMent aliPayMent = new AliPayMent();
		String tradeNo = UUID.randomUUID().toString().replaceAll("-", "");
		String amount = request.getParameter("WIDtotal_amount");
		String sub = request.getParameter("WIDsubject");

		Double b = (Double) request.getSession().getAttribute("amout");
		if (b == null) {
			response.sendRedirect("/meishimeike/");
		}
		// 商户订单号
		aliPayMent.setOutTradeNo(tradeNo);
		// 付款金额
		aliPayMent.setTotalAmount(b.toString() + "");
		// 订单名称 aliPayMent.setSubject();
		aliPayMent.setSubject("美食美客订单");
		// 商品描述
		aliPayMent.setBody("zxcxz");
		String result = alipayService.tradePayment(aliPayMent);
		// System.out.println(result);
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		out.write(result);
		out.flush();
		out.close();
	}

	/*public void wapPay(HttpServletRequest httpRequest, HttpServletResponse httpResponse)
			throws ServletException, IOException {
		AlipayClient alipayClient = new DefaultAlipayClient("https://openapi.alipay.com/gateway.do", APP_ID, APP_PRIVATE_KEY, "json", "utf-", ALIPAY_PUBLIC_KEY, "RSA2"); //获得初始化的AlipayClient
		AlipayTradeWapPayRequest alipayRequest = new AlipayTradeWapPayRequest();// 创建API对应的request
		alipayRequest.setReturnUrl("http://domain.com/CallBack/return_url.jsp");
		alipayRequest.setNotifyUrl("http://domain.com/CallBack/notify_url.jsp");// 在公共参数中设置回跳和通知地址
		alipayRequest.setBizContent("{" + " \"out_trade_no\":\"20150320010101002\"," + " \"total_amount\":\"88.88\","
				+ " \"subject\":\"Iphone6 16G\"," + " \"product_code\":\"QUICK_WAP_PAY\"" + " }");// 填充业务参数
		String form = "";
		try {
			form = alipayClient.pageExecute(alipayRequest).getBody(); // 调用SDK生成表单
		} catch (AlipayApiException e) {
			e.printStackTrace();
		}
		httpResponse.setContentType("text/html;charset=UTF-8" );
		httpResponse.getWriter().write(form);// 直接将完整的表单html输出到页面
		httpResponse.getWriter().flush();
		httpResponse.getWriter().close();
	}*/

	/**
	 * <pre>
	 * <h1>交易查询</h1>
	 * &#64;param aliPayMent
	 * &#64;return
	 * 请求参数：(“商户订单号”和“支付宝交易号”2选1设置)
	 * 1) 商户订单号:商户网站订单系统中唯一订单号 
	 *    aliPayMent.setOutTradeNo(String str)
	 * 2) 支付宝交易号
	 *    aliPayMent.setTradeNo(String str)
	 * </pre>
	 */
	public void tradeQuery(AliPayMent aliPayMent, HttpServletRequest request, HttpServletResponse response) {
	}

	/**
	 * <pre>
	 * <h1>退款</h1>
	 * &#64;param aliPayMent
	 * &#64;return
	 * 请求参数：(“商户订单号”和“支付宝交易号”2选1设置)
	 * 1) 商户订单号:商户订单号，商户网站订单系统中唯一订单号
	 *    aliPayMent.setOutTradeNo(String str)
	 * 2) 支付宝交易号
	 *    aliPayMent.setTradeNo(String str)
	 * 3) 需要退款的金额，该金额不能大于订单金额: 必填
	 *    aliPayMent.setTradeNo(String str)
	 * 4) 退款的原因说明
	 *    aliPayMent.setRefundReason(String str)
	 * 5) 标识一次退款请求，同一笔交易多次退款需要保证唯一，如需部分退款，则此参数必传
	 *    aliPayMent.setOutRequestNo(String str)
	 * </pre>
	 */
	public void tradeRefund(AliPayMent aliPayMent, HttpServletRequest request, HttpServletResponse response) {
	}

	/**
	 * <pre>
	 * <h1>退款查询</h1>
	 * &#64;param aliPayMent
	 * &#64;return
	 * 请求参数：(“商户订单号”和“支付宝交易号”2选1设置)
	 * 1) 商户订单号:商户订单号，商户网站订单系统中唯一订单号
	 *    aliPayMent.setOutTradeNo(String str)
	 * 2) 支付宝交易号
	 *    aliPayMent.setTradeNo(String str)
	 * 3) 请求退款接口时，传入的退款请求号，如果在退款请求时未传入，则该值为创建交易时的外部交易号: 必填
	 *    aliPayMent.setOutRequestNo(String str)
	 * </pre>
	 */
	public void tradeRefundQuery(AliPayMent aliPayMent, HttpServletRequest request, HttpServletResponse response) {
	}

	/**
	 * <pre>
	 * <h1>交易关闭</h1>
	 * &#64;param aliPayMent
	 * &#64;return
	 * 请求参数：(“商户订单号”和“支付宝交易号”2选1设置)
	 * 1) 商户订单号:商户订单号，商户网站订单系统中唯一订单号
	 *    aliPayMent.setOutTradeNo(String str)
	 * 2) 支付宝交易号
	 *    aliPayMent.setTradeNo(String str)
	 * </pre>
	 */
	public void tradeClose(AliPayMent aliPayMent, HttpServletRequest request, HttpServletResponse response) {

	}

}
