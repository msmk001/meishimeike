package com.zhou.meishimeike.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradeWapPayRequest;
import com.maguor.pay.PaymentConfig;
import com.maguor.pay.model.AliPayMent;
import com.maguor.pay.service.AlipayService;
import com.maguor.pay.service.impl.AlipayServiceImpl;
import com.zhou.meishimeike.entity.OrderForm;
import com.zhou.meishimeike.service.OrderService;
import com.zhou.meishimeike.util.CheckMobile;

@Controller

public class AlipayController extends HttpServlet {
	
	@Autowired
	OrderService orderService;
	
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

	// 异步回调指令
	private final String NOTIFY_URL = "notifyUrl";
	// 成功回调指令
	private final String RETURN_URL = "returnUrl";

	// 总控制器
	@Override
	@RequestMapping("/alipay")
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String command = req.getParameter("command");
		switch (command) {
		case PAYMENT:
			OrderForm orderForm=(OrderForm)req.getSession().getAttribute("morder");
			if(orderForm==null) {
				resp.sendRedirect("/meishimeike/"); //去首页
				return;
			}
			boolean phone = CheckMobile.isPhone(req.getHeader("USER-AGENT"));
			if (phone) {
				wapPay(req, resp, orderForm); // 手机付款
			} else {
				tradePayment(req, resp, orderForm); // pc付款
			}
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
			doNotifyUrl(req, resp); // 异步回调
			break;
		case RETURN_URL:
			doReturnUrl(req, resp); // 同步回调
			break;
		default:
			throw new RuntimeException("没有匹配的指定command.");
		}
	}
	
	
	//同步回调--------------------------------------------------------------------------------------
	public void doReturnUrl(HttpServletRequest request, HttpServletResponse response) {
		try {
			/*
			 * * 功能：支付宝服务器同步�?�知页面 日期�?2017-03-30 说明�?
			 * 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的�?要，按照�?术文档编�?,并非�?定要使用该代码�??
			 * 该代码仅供学习和研究支付宝接口使用，只是提供�?个参考�??
			 ************************* 
			 * 
			 * 页面功能说明************************* 该页面仅做页面展示，业务逻辑处理请勿在该页面执行
			 */

			// 获取支付宝GET过来反馈信息
			Map<String, String> params = new HashMap<String, String>();
			Map<String, String[]> requestParams = request.getParameterMap();
			for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
				String name = (String) iter.next();
				String[] values = (String[]) requestParams.get(name);
				String valueStr = "";
				for (int i = 0; i < values.length; i++) {
					valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
				}
				// 乱码解决，这段代码在出现乱码时使�?
				valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
				params.put(name, valueStr);
			}

			boolean signVerified = AlipaySignature.rsaCheckV1(params, PaymentConfig.ALIPAY_PUBLIC_KEY,
					PaymentConfig.CHARSET, PaymentConfig.SIGN_TYPE); // 调用SDK验证签名

			// —�?�请在这里编写您的程序（以下代码仅作参�?�）—�??
			if (signVerified) {
				// 商户订单�?
				String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"), "UTF-8");

				// 支付宝交易号
				String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"), "UTF-8");

				// 付款金额
				String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"), "UTF-8");

				System.out.println("trade_no:" + trade_no + "<br/>out_trade_no:" + out_trade_no + "<br/>total_amount:"
						+ total_amount);
			} else {
				System.out.println("验签失败");
			}
			// —�?�请在这里编写您的程序（以上代码仅作参�?�）—�??

		} catch (AlipayApiException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}

	// 异步回调--------------------------------------------------------------------------------------
	private void doNotifyUrl(HttpServletRequest request, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		try {
			/*
			 * * 功能：支付宝服务器异步�?�知页面 日期�?2017-03-30 说明�?
			 * 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的�?要，按照�?术文档编�?,并非�?定要使用该代码�??
			 * 该代码仅供学习和研究支付宝接口使用，只是提供�?个参考�??
			 ************************* 
			 * 
			 * 页面功能说明************************* 创建该页面文件时，请留心该页面文件中无任何HTML代码及空格�??
			 * 该页面不能在本机电脑测试，请到服务器上做测试。请确保外部可以访问该页面�?? 如果没有收到该页面返回的 success
			 * 建议该页面只做支付成功的业务逻辑处理，�??款的处理请以调用�?款查询接口的结果为准�?
			 */

			// 获取支付宝POST过来反馈信息
			Map<String, String> params = new HashMap<String, String>();
			Map<String, String[]> requestParams = request.getParameterMap();
			for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
				String name = (String) iter.next();
				String[] values = (String[]) requestParams.get(name);
				String valueStr = "";
				for (int i = 0; i < values.length; i++) {
					valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
				}
				// 乱码解决，这段代码在出现乱码时使�?
				valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
				params.put(name, valueStr);
			}

			boolean signVerified = AlipaySignature.rsaCheckV1(params, PaymentConfig.ALIPAY_PUBLIC_KEY,
					PaymentConfig.CHARSET, PaymentConfig.SIGN_TYPE); // 调用SDK验证签名
			// —�?�请在这里编写您的程序（以下代码仅作参�?�）—�??

			/*
			 * 实际验证过程建议商户务必添加以下校验�? 1、需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号�?
			 * 2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额）�?
			 * 3、校验�?�知中的seller_id（或者seller_email)
			 * 是否为out_trade_no这笔单据的对应的操作方（有的时�?�，�?个商户可能有多个seller_id/seller_email�?
			 * 4、验证app_id是否为该商户本身�?
			 */
			if (signVerified) {// 验证成功
				// 商户订单�?
				String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"), "UTF-8");

				// 支付宝交易号
				String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"), "UTF-8");

				// 交易状�??
				String trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"), "UTF-8");

				if (trade_status.equals("TRADE_FINISHED")) {
					// 判断该笔订单是否在商户网站中已经做过处理
					// 如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
					// 如果有做过处理，不执行商户的业务程序

					// 注意�?
					// �?款日期超过可�?款期限后（如三个月可�?款），支付宝系统发�?�该交易状�?��?�知
				} else if (trade_status.equals("TRADE_SUCCESS")) {
					// 判断该笔订单是否在商户网站中已经做过处理
					// 如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
					// 如果有做过处理，不执行商户的业务程序

					// 注意�?
					// 付款完成后，支付宝系统发送该交易状�?��?�知
				}

				System.out.println("success");

			} else {// 验证失败
				System.out.println("fail");

				// 调试用，写文本函数记录程序运行情况是否正�?
				// String sWord = AlipaySignature.getSignCheckContentV1(params);
				// AlipayConfig.logResult(sWord);
			}

			// —�?�请在这里编写您的程序（以上代码仅作参�?�）—�??

		} catch (AlipayApiException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
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
	 * </pre>--------------------------------------------------------------------------------------
	 */
	public void tradePayment(HttpServletRequest request, HttpServletResponse response,OrderForm orderForm) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		AlipayService alipayService = new AlipayServiceImpl();
		AliPayMent aliPayMent = new AliPayMent();

		//String tradeNo = UUID.randomUUID().toString().replaceAll("-", "");
		//String amount = request.getParameter("WIDtotal_amount");
		//String sub = request.getParameter("WIDsubject");

		// 商户订单号
		aliPayMent.setOutTradeNo(orderForm.getoTradeNo());
		// 付款金额
		aliPayMent.setTotalAmount(orderForm.getoPrice()+"");
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

	// **手机支付宝付款--------------------------------------------------------------------------------------
	public void wapPay(HttpServletRequest request, HttpServletResponse response,OrderForm orderForm) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// 订单号
		//String tradeNo = UUID.randomUUID().toString().replaceAll("-", "");
		
		AlipayClient alipayClient = new DefaultAlipayClient("https://openapi.alipay.com/gateway.do",
				PaymentConfig.APP_ID, PaymentConfig.MERCHANT_PRIVATE_KEY, "json", "utf-8",
				PaymentConfig.ALIPAY_PUBLIC_KEY, "RSA2"); // 获得初始化的AlipayClient
		AlipayTradeWapPayRequest alipayRequest = new AlipayTradeWapPayRequest();// 创建API对应的request
		alipayRequest.setReturnUrl("http://www.160go.cn/meishimeike/alipay?command=returnUrl");
		alipayRequest.setNotifyUrl("http://www.160go.cn/meishimeike/alipay?command=notifyUrl");// 在公共参数中设置回跳和通知地址
		alipayRequest.setBizContent("{" + " \"out_trade_no\":\"" + orderForm.getoTradeNo() + "\"," + " \"total_amount\":\"" + orderForm.getoPrice() + "\","
				+ " \"subject\":\"美食美客订单\"," + " \"product_code\":\"QUICK_WAP_PAY\"" + " }");// 填充业务参数
		String form = "";
		try {
			form = alipayClient.pageExecute(alipayRequest).getBody(); // 调用SDK生成表单
		} catch (AlipayApiException e) {
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().write(form);// 直接将完整的表单html输出到页面
		response.getWriter().flush();
		response.getWriter().close();
	}

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
	 * </pre>--------------------------------------------------------------------------------------
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
	 * </pre>--------------------------------------------------------------------------------------
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
	 * </pre>--------------------------------------------------------------------------------------
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
	 * </pre>--------------------------------------------------------------------------------------
	 */
	public void tradeClose(AliPayMent aliPayMent, HttpServletRequest request, HttpServletResponse response) {

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}

	

}
