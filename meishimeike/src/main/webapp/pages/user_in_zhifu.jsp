<%@page import="java.util.List"%>
<%@page import="com.zhou.meishimeike.entity.CommodityJson"%>
<%@page import="com.zhou.meishimeike.entity.Merchant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="TE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1,user-scalable=no, width=device-width">
<title></title>
<script type="text/javascript" src="js/jquery-2.1.0.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<style type="text/css">
#bodys {
	width: 60%;
}

#logo4j {
	width: 100%;
	height: 100%;
	padding-right: 20px;
}

body, p {
	margin: 0px;
	padding: 0px;
}

* {
	font-family: "微软雅黑";
	margin: 0px auto;
}

@media screen and (min-width: 500px) {
	body {
		background-color: #dff0d8;
		/*background-image:linear-gradient(180deg, rgba(170, 234, 15, 0.62) 0%, rgba(255, 255, 255, 0) 40%);*/
	}
	.Div {
		width: 60%;
		height: 620px;
		margin: 0px auto;
	}
	.Div_head {
		width: 60%;
		height: 40px;
		background-color: #c6ee66;
		background-clip: padding-box;
		border-radius: 10px;
	}
	.Div_head>p {
		text-align: center;
		height: 40px;
		line-height: 40px;
		font-size: 18px;
		color: #dd6f2f;
		border-radius: 5px;
		font-weight: bold;
	}
	.driss {
		width: 100%;
		height: 90px;
		margin-top: 10px;
		padding: 0px 15px;
	}
	.driss>p {
		height: 20px;
		line-height: 20px;
		overflow: hidden;
		width: 50%;
	}
	.driss>p:nth-of-type(1) {
		color: rgb(131, 193, 136);
	}
	.driss>p:nth-of-type(2) {
		font-size: 22px;
		height: 30px;
		color: #359a24;
		cursor: pointer;
		margin-top: 10px;
		font-weight: bold;
	}
	.driss>p:nth-of-type(3) {
		color: rgba(156, 156, 156, 0.8);
	}
	.time {
		width: 100%;
		height: 90px;
		background: #fff;
		border-radius: 5px;
		padding: 15px;
	}
	.time>div {
		width: 100%;
		height: 25px;
	}
	.time>div:first-child {
		margin-bottom: 10px;
	}
	.time>div:last-child {
		
	}
	.time>div>p {
		width: 50%;
		float: left;
		display: inline-block;
		height: 25px;
		line-height: 25px;
	}
	.time>div>p:first-child {
		text-align: left;
	}
	.time>div>p:last-child {
		text-align: right;
		color: rgba(170, 234, 15, 0.65);
		font-weight: bold;
	}
	.food {
		width: 100%;
		min-height: 260px;
		background: #fff;
		border-radius: 5px;
		margin-top: 20px;
		padding: 15px;
	}
	.food-name {
		width: 100%;
		height: 30px;
		border-bottom: 1px solid #e8e2e2;
	}
	.food-name>p {
		float: left;
	}
	.food-name>p:first-child {
		font-size: 18px;
		font-weight: bold;
		color: #000;
	}
	.food-name>p:last-child {
		font-size: 20px;
		line-height: 30px;
		color: #676767;
	}
	.food-name2 {
		width: 100%;
		height: 50px;
		margin-top: 10px;
	}
	.food-img {
		width: 15%;
		height: 40px;
		float: left;
		margin: 5px 0px;
	}
	.food-img2 {
		float: left;
		width: 85%;
		height: 40px;
		line-height: 40px;
		margin: 5px 0px;
	}
	.food-img2>span {
		display: inline-block;
	}
	.food-img2>span:nth-of-type(1) {
		width: 40%;
	}
	.food-img2>span:nth-of-type(2) {
		width: 15%;
	}
	.food-img2>span:nth-of-type(3) {
		width: 15%;
		text-decoration: line-through;
		color: #ccc;
	}
	.food-img2>span:nth-of-type(4) {
		width: 20%;
		text-align: right;
		float: right;
	}
	.food-money {
		width: 100%;
		height: 30px;
		margin: 5px 0px;
		line-height: 30px;
	}
	.food-money>span {
		width: 50%;
	}
	.food-money>span:last-child {
		float: right;
		text-align: right;
	}
	.food-money2 {
		width: 100%;
		height: 40px;
		margin: 5px 0px;
		line-height: 30px;
		border-bottom: 1px solid #e8e2e2;
	}
	.food-money2>span {
		width: 50%;
	}
	.food-money2>span:last-child {
		float: right;
		text-align: right;
		color: #e65f5f;
		cursor: pointer;
	}
	.moneys {
		width: 100%;
		height: 30px;
		margin: 5px 0px;
		line-height: 30px;
	}
	.moneys>span {
		width: 20%;
		float: right;
	}
	.moneys>span:first-child {
		font-size: 16px;
		font-weight: bold;
	}
	.moneys>span:last-child {
		text-align: right;
	}
	.foot {
		width: 100%;
		min-height: 110px;
		background: #fff;
		border-radius: 5px;
		padding: 15px;
		margin-top: 20px;
	}
	.foot_div1 {
		width: 100%;
		min-height: 40px;
		line-height: 40px;
	}
	.foot_div1>span {
		width: 50%;
	}
	.foot_div1>span:first-child {
		font-weight: bold;
	}
	.foot_div1>span:last-child {
		float: right;
		text-align: right;
		color: #ccc;
	}
	.add {
		width: 60%;
		background-color: #8e8e8e;
		min-height: 50px;
		margin: 0px auto;
	}
	.add_div1 {
		width: 70%;
		min-height: 50px;
		float: left;
		line-height: 50px;
	}
	.add_div1>span:first-child {
		font-size: 18px;
		font-weight: bold;
		color: #FFFFFF;
		height: 20px;
		line-height: 20px;
		display: inline-block;
		margin-left: 10px;
	}
	.add_div1>span:last-child {
		font-size: 16px;
		color: #fff;
		height: 20px;
		line-height: 20px;
		display: inline-block;
	}
	.add>input {
		width: 30%;
		text-align: center;
		height: 50px;
		line-height: 50px;
		outline: none;
		border: 0px;
		float: right;
		background-color: #c6ee66;
	}
	.dizhi {
		width: 100%;
		height: 100%;
		background-color: rgba(0, 0, 0, 0.3);
		position: fixed;
		left: 0px;
		top: 0px;
		z-index: 99;
		display: none;
	}
	.dizhi_div {
		width: 600px;
		height: 400px;
		background-color: #fff;
		position: absolute;
		left: 50%;
		margin-left: -300px;
		top: 50%;
		margin-top: -200px;
		padding: 20px;
	}
	.dizhi_div>h3 {
		padding-left: 20px;
		margin-bottom: 20px;
	}
	.dizhi input[type=text] {
		width: 400px;
		margin: 0px auto;
		height: 40px;
		outline: none;
		margin: 20px;
		padding-left: 10px;
	}
	.dizhi span {
		color: red;
	}
	.dizhi select {
		width: 400px;
		height: 40px;
		outline: none;
		margin-left: 20px;
		padding-left: 10px;
		margin-right: 20px;
	}
	.dizhi_div input[type=submit] {
		height: 50px;
		width: 200px;
		border: 0px;
		outline: none;
		background-color: #c6ee66;
		font-size: 18px;
		margin-left: 20px;
		margin-top: 20px;
	}
	.x {
		position: absolute;
		right: 10px;
		top: 5px;
		font-size: 20px;
		cursor: pointer;
	}
}

@media screen and (max-width: 500px) {
	body {
		background-color: #dff0d8;
		/*background-image:linear-gradient(180deg, rgba(170, 234, 15, 0.62) 0%, rgba(255, 255, 255, 0) 40%);*/
	}
	.Div {
		width: 95%;
		height: 630px;
		margin: 0px auto;
	}
	.Div_head {
		width: 100%;
		height: 40px;
		background-color: #c6ee66;
		background-clip: padding-box;
		border-radius: 0px 0px 8px 8px;
	}
	.Div_head>p {
		text-align: center;
		height: 40px;
		line-height: 40px;
		font-size: 18px;
		color: #dd6f2f;
		border-radius: 5px;
		font-weight: bold;
	}
	.driss {
		width: 100%;
		height: 90px;
		margin-top: 10px;
		padding: 0px 15px;
	}
	.driss>p {
		height: 20px;
		line-height: 20px;
		overflow: hidden;
		width: 50%;
	}
	.driss>p:nth-of-type(1) {
		color: rgb(131, 193, 136);
	}
	.driss>p:nth-of-type(2) {
		font-size: 22px;
		height: 30px;
		color: #359a24;
		cursor: pointer;
		font-weight: bold;
		margin-top: 10px;
	}
	.driss>p:nth-of-type(3) {
		color: rgba(156, 156, 156, 0.8);
	}
	.time {
		width: 100%;
		height: 90px;
		background: #fff;
		border-radius: 5px;
		padding: 15px;
	}
	.time>div {
		width: 100%;
		height: 25px;
	}
	.time>div:first-child {
		margin-bottom: 10px;
	}
	.time>div:last-child {
		
	}
	.time>div>p {
		width: 50%;
		float: left;
		display: inline-block;
		height: 25px;
		line-height: 25px;
	}
	.time>div>p:first-child {
		text-align: left;
	}
	.time>div>p:last-child {
		text-align: right;
		color: rgba(170, 234, 15, 0.65);
		font-weight: bold;
	}
	.food {
		width: 100%;
		min-height: 260px;
		background: #fff;
		border-radius: 5px;
		margin-top: 20px;
		padding: 15px;
	}
	.food-name {
		width: 100%;
		height: 30px;
		border-bottom: 1px solid #e8e2e2;
	}
	.food-name>p {
		float: left;
	}
	.food-name>p:first-child {
		font-size: 18px;
		font-weight: bold;
		color: #000;
	}
	.food-name>p:last-child {
		font-size: 12px;
		line-height: 30px;
		color: #676767;
	}
	.food-name2 {
		width: 100%;
		height: 50px;
		margin-top: 10px;
	}
	.food-img {
		width: 15%;
		height: 40px;
		float: left;
		margin: 5px 0px;
	}
	.food-img2 {
		float: left;
		width: 85%;
		height: 40px;
		line-height: 40px;
		margin: 5px 0px;
	}
	.food-img2>span {
		display: inline-block;
	}
	.food-img2>span:nth-of-type(1) {
		width: 40%;
	}
	.food-img2>span:nth-of-type(2) {
		width: 15%;
	}
	.food-img2>span:nth-of-type(3) {
		width: 15%;
		text-decoration: line-through;
		color: #ccc;
	}
	.food-img2>span:nth-of-type(4) {
		width: 20%;
		text-align: right;
		float: right;
	}
	.food-money {
		width: 100%;
		height: 30px;
		margin: 5px 0px;
		line-height: 30px;
	}
	.food-money>span {
		width: 50%;
	}
	.food-money>span:last-child {
		float: right;
		text-align: right;
	}
	.food-money2 {
		width: 100%;
		height: 40px;
		margin: 5px 0px;
		line-height: 30px;
		border-bottom: 1px solid #e8e2e2;
	}
	.food-money2>span {
		width: 50%;
	}
	.food-money2>span:last-child {
		float: right;
		text-align: right;
		color: #e65f5f;
		cursor: pointer;
	}
	.moneys {
		width: 100%;
		height: 30px;
		margin: 5px 0px;
		line-height: 30px;
	}
	.moneys>span {
		width: 20%;
		float: right;
	}
	.moneys>span:first-child {
		font-size: 16px;
		font-weight: bold;
	}
	.moneys>span:last-child {
		text-align: right;
	}
	.foot {
		width: 100%;
		height: 110px;
		background: #fff;
		border-radius: 5px;
		padding: 15px;
		margin-top: 20px;
	}
	.foot_div1 {
		width: 100%;
		height: 40px;
		line-height: 40px;
	}
	.foot_div1>span {
		width: 50%;
	}
	.foot_div1>span:first-child {
		font-weight: bold;
	}
	.foot_div1>span:last-child {
		float: right;
		text-align: right;
		color: #ccc;
	}
	.add {
		width: 100%;
		background-color: #8e8e8e;
		height: 50px;
		padding-left: 10px;
		position: fixed;
		bottom: 0px;
	}
	.add_div1 {
		width: 70%;
		height: 50px;
		float: left;
		line-height: 50px;
	}
	.add_div1>span:first-child {
		font-size: 18px;
		font-weight: bold;
		color: #FFFFFF;
		height: 20px;
		line-height: 20px;
		display: inline-block;
	}
	.add_div1>span:last-child {
		font-size: 16px;
		color: #fff;
		height: 20px;
		line-height: 20px;
		display: inline-block;
	}
	.add>input {
		width: 30%;
		text-align: center;
		height: 50px;
		line-height: 50px;
		outline: none;
		border: 0px;
		float: right;
		background-color: #c6ee66;
	}
	.dizhi {
		width: 100%;
		height: 100%;
		background-color: rgba(0, 0, 0, 0.3);
		position: fixed;
		left: 0px;
		top: 0px;
		z-index: 99;
		display: none;
	}
	.dizhi_div {
		width: 100%;
		height: 100%;
		background-color: #fff;
	}
	.dizhi_div>h3 {
		padding-left: 20px;
		margin: 0px auto;
		padding-top: 20px;
		margin-bottom: 30px;
	}
	.dizhi input[type=text] {
		width: 90%;
		height: 40px;
		outline: none;
		margin: 10px 0px 5px 20px;
		padding-left: 10px;
		border: 0px;
		border-bottom: 1px solid #c0c0c0;
	}
	.dizhi span {
		color: red;
		margin-left: 20px;
		padding-left: 10px;
	}
	.dizhi select {
		width: 90%;
		height: 40px;
		outline: none;
		margin-left: 20px;
		padding-left: 10px;
		margin-right: 20px;
		border: 0px;
		border-bottom: 1px solid #C0C0C0;
		margin: 10px 0px 5px 20px;
	}
	.dizhi select>op {
		
	}
	.dizhi_div input[type=submit] {
		height: 50px;
		width: 200px;
		border: 0px;
		outline: none;
		background-color: #c6ee66;
		font-size: 18px;
		margin-left: 20px;
		margin-top: 20px;
	}
	.x {
		position: absolute;
		right: 10px;
		top: 5px;
		font-size: 20px;
		cursor: pointer;
	}
}

.navbar-brand {
	/* height: 65px; */
	padding: 0;
}

.navbar-default {
	box-sizing: border-box;
	background-color: rgba(170, 234, 15, 0.62);
}

::-webkit-scrollbar {
	display: none
}

.navbar-default .navbar-nav>li>a:hover {
	background-color: #0f698a;
	color: #19e4c0 !important;
	cursor: pointer;
}

.navbar-default .navbar-nav>li>a {
	color: #555;
}

#logo4j {
	width: 100%;
	height: 100%;
	padding-right: 20px;
}
</style>
</head>
<body>
<form id="form1" action="" method="post"> 
	<header>
		<nav class="navbar navbar-default" role="navigation">
			<div id="bodys" class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#example-navbar-collapse">
						<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/meishimeike"><img id="logo4j"
						src="img/logo2.png" /></a>
				</div>
				<div class="collapse navbar-collapse" id="example-navbar-collapse">
					<ul class="nav navbar-nav">
						<li><a href="#">首页</a></li>
						<li><a href="#">我的客服</a></li>
						<li class="active"><a href="#">我的订单</a></li>
						<li><a href="/meishimeike/pages/merchant_login.html">入住加盟</a></li>
						<li><c:if test="${user==null}">
								<a href="/meishimeike/pages/user_login.html">登录|注册</a>
							</c:if> <c:if test="${user!=null}">
								<a>${userName}</a>
							</c:if></li>
						<c:if test="${user!=null}">
							<li><a style="color: #b34644;"
								href="/meishimeike/pages/user_login.html">注销</a></li>
						</c:if>
						<li class="dropdown">

							<ul class="dropdown-menu">
								<li><a href="#">jmeter</a></li>
								<li><a href="#">EJB</a></li>
								<li><a href="#">Jasper Report</a></li>
								<li class="divider"></li>
								<li><a href="#">分离的链接</a></li>
								<li class="divider"></li>
								<li><a href="#">另一个分离的链接</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<div class="Div_head">
		<p>确认订单</p>
	</div>
	<div class="Div">

		<div class="driss">

			<p></p>
			<c:forEach var="userItm" items="${user.userInfo}" varStatus="ind">
				<div class="site">
					<input type="radio"
						<c:if test="${user.userInfo!=null&&ind.index==0}">checked="checked"</c:if>
						name="usersite"> ${userItm.ufPhone} ${userItm.ufSite} ${userItm.ufName}
				</div>
			</c:forEach>
			<p>添加地址</p>
			<p>
				<span></span>&nbsp;<span></span>
			</p>
		</div>
		<div class="time">
			<div>
				<p>送达时间</p>
				<p>尽快送达</p>
			</div>
			<div>
				<p>支付方式</p>
				<p>在线支付</p>
			</div>
		</div>
		<div class="food">
			<div class="food-name">
				<p>${merchantData.info.mName}</p>

			</div>
			<div class="food-name2">

				<div class="food-img2">
					<span>黄焖鸡米饭</span> <span>×1</span> <span>￥22</span> <span>￥19.99</span>
				</div>
				<c:set value="0" var="sumresult" />
				<c:forEach var="i" items="${cList}">
					<div class="food-img2">
						<span>${i.name}</span> <span>×${i.num}</span> <span>￥${i.pice*i.num+5}</span>
						<span>￥${i.pice*i.num}</span>
						<c:set value="${sumresult+i.pice*i.num}" var="sumresult" />
					</div>
				</c:forEach>

			</div>
			<p style="clear: both;">
				<c:set value="${sumresult+3}" var="sumresult" />
			<div class="food-money">
				<span>包装费</span> <span>￥1</span>
			</div>
			<div class="food-money">
				<span>配送费</span> <span>￥2</span>
			</div>
			<div class="food-money2">
				<span>红包</span> <span>无可用红包&nbsp;></span>
			</div>
			<div class="moneys">
				<span>${sumresult}</span> <span>小计:￥</span>
			</div>
		</div>

		<!-- 
		<div class="foot">
			<div class="foot_div1">
				<span>餐具份数</span> <span>未选择></span>
			</div>
			<div class="foot_div1">
				<span>订单备注</span> <span>口味、偏好></span>
			</div>
		</div>
 -->
	</div>
	<div class="add">
		<div class="add_div1">
			<span>￥${sumresult}</span> &nbsp; <span>已优惠￥3</span>
		</div>
		<input type="button" value="去支付" name="money" onclick="window.location.href='/meishimeike/alipay?command=payment'" />
	</div>
	<div class="dizhi">
		<div class="dizhi_div">
			<h3>添加地址</h3>
			<input type="text" placeholder="请输入点餐人姓名" name="name" />
			<span class="span1"></span> <br />
			<select class="sel" name="site">
				<option>请选择地址</option>
				<option>三峡联大</option>
				<option>北大青鸟</option>
				<option>重庆企业管理学校</option>
			</select> <span class="span2"></span> <br />
			<input type="text" placeholder="请输入点餐人手机号" name="phone" /> <span
				class="span3"></span> <br />
			<input type="button" onclick="commitSite()"  id="dizhi" class="tijiao"
				value="添加完成" />
			<p class="x">×</p>
		</div>

	</div>
	 </form>
	 <%
	 	List <CommodityJson> m=(List <CommodityJson>)session.getAttribute("cList");
	 	double amout=0;
	 	for(CommodityJson c:m){
	 		amout+=c.getPice()*c.getNum();
	 	}
	 	session.setAttribute("amout",(amout+3));
	 %>
</body>
</html>
<script>
	function commitSite(){
		$.ajax({
			type:"post",
			url:"/meishimeike/user/addSite",
			async:true,
			data:$('#form1').serializeArray(),
			success:function(data){
				var jso = JSON.parse(data);	
				if(jso.data==true){
					//alert("完成")
				}
			}
		});
	}

	$(function() {
		$(".x").click(function() {
			$(".dizhi").hide();
		})
		$(".driss>p:nth-of-type(2)").click(function() {
			$(".dizhi").show();
			$(".sel").val("请选择地址");
			$("input[name=name]").val("");
			$("input[name=phone]").val("");
			$(".span1").text("");
			$(".span3").text("");
			$(".span2").text("");
		})
		var fle = false;
		var fle2 = false;
		var fle3 = false;
		$("input[name=name]").blur(function() {
			if ($(this).val() != "") {
				if ($(this).val().length < 3) {

					$(".span1").text("用户名至少3位");
					fle = false;
				} else {
					$(".span1").text("");
					fle = true;
				}
			} else {
				$(".span1").text("用户名不能为空");
			}
		})
		$("input[name=phone]")
				.blur(
						function() {
							var mobile = $("input[name=phone]").val();
							if ($(this).val() != "") {
								if (!(/^((\d{3}-\d{8}|\d{4}-\d{7,8})|(1[3|5|7|8][0-9]{9}))$/
										.test(mobile))) {
									$(".span3").text("手机号格式错误");
									fle2 = false;
								} else {
									$(".span3").text("");
									fle2 = true;
								}
							} else {
								$(".span3").text("手机号不能为空");
							}
						})
		$(".sel").blur(function() {
			if ($(this).val() != "请选择地址") {
				$(".span2").text("");
				fle3 = true;
			} else {
				fle3 = false;
				$(".span2").text("请选择地址");
			}
		})
		$(".tijiao")
				.click(
						function() {
							if (fle == true & fle2 == true & fle3 == true) {
								$(".driss>p:first-child").text("订单配送至");
								$(".driss>p:nth-of-type(2)").text(
										$(".sel").val());
								$(".driss>p:last-child>span:first-child").text(
										$("input[name=name]").val());
								$(".driss>p:last-child>span:last-child").text(
										$("input[name=phone]").val());
								$(".dizhi").hide();
								$(".sel").val("请选择地址");
								$("input[name=name]").val("");
								$("input[name=phone]").val("");
								$(".span1").text("");
								$(".span3").text("");
								$(".span2").text("");
							} else {
								if ($("input[name=name]").val() != "") {
									if ($("input[name=name]").val().length < 4) {
										$(".span1").text("用户名至少3位");
										fle = false;
									} else {
										$(".span1").text("");
										fle = true;
									}
								} else {
									$(".span1").text("用户名不能为空");
								}
								var mobile = $("input[name=phone]").val();
								if ($("input[name=phone]").val() != "") {
									if (!(/^((\d{3}-\d{8}|\d{4}-\d{7,8})|(1[3|5|7|8][0-9]{9}))$/
											.test(mobile))) {
										$(".span3").text("手机号格式错误");
										fle2 = false;
									} else {
										$(".span3").text("");
										fle2 = true;
									}
								} else {
									$(".span3").text("手机号不能为空");
								}
								if ($(".sel").val() != "请选择地址") {
									$(".span2").text("");
									fle3 = true;
								} else {
									fle3 = false;
									$(".span2").text("请选择地址");
								}
							}
						})
	})
</script>