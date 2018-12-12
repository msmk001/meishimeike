<%@page import="com.zhou.meishimeike.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.zhou.meishimeike.entity.CommodityJson"%>
<%@page import="com.zhou.meishimeike.entity.Merchant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="TE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1,user-scalable=no, width=device-width">
<title>去支付</title>
<script type="text/javascript" src="js/jquery-2.1.0.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />


<link rel="icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/pages/img/tb.ico">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/pages/css/address.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/pages/css/site.css">


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

#bgBox {
	width: 100%;
	height: 52px;
	background-color: #fff;
	position: fixed;
	top: 0;
	position: fixed;
}

.navbar {
	position: fixed;
	width: 100%;
	border: 1px solid transparent;
	z-index: 2;
	top: 0;
}

@media screen and (min-width: 500px) {
	body {
		background-color: #dff0d8;
		/*background-image:linear-gradient(180deg, rgba(170, 234, 15, 0.62) 0%, rgba(255, 255, 255, 0) 40%);*/
	}
	.Div {
		width: 60%;
		height: auto;
		margin: 0px auto;
		margin-bottom:20px;
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
		color: #dd2f2f;
		border-radius: 5px;
		font-weight: bold;
	}
	.driss {
		width: 100%;
		min-height: 90px;
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
		min-height: 50px;
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
		width: 98%;
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
		width: 98%;
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
		width: 98%;
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
		width: 98%;
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
		background-color: rgba(0, 0, 0, 0.6);
		position: fixed;
		left: 0px;
		top: 0px;
		z-index: 99;
		display: none;
	}
	
}

@media screen and (max-width: 500px) {

.app-location input[type="button"] {
    font-size: 20px;
    font-weight: 300;
    color: #736e6e;
    cursor: pointer;
    outline: none;
   padding: 8px 0;
    width: 90%;
    font-weight:bold;
        outline:none !important;
        border:0px

}
		.app-location{
		width: 100%;
	}
	body {
		background-color: #dff0d8;
		/*background-image:linear-gradient(180deg, rgba(170, 234, 15, 0.62) 0%, rgba(255, 255, 255, 0) 40%);*/
	}
	.Div {
		width: 95%;
		height: auto;
		margin: 0px auto;
		margin-bottom:50px;
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
		min-height: 90px;
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
		min-height: 60px;
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
		width: 98%;
		height: 40px;
		line-height: 40px;
		margin: 5px 0px;
	}
	.food-img2>span {
		display: inline-block;
		box-sizing: border-box;
	}
	.food-img2>span:nth-of-type(1) {
		width: 36%;
	}
	.food-img2>span:nth-of-type(2) {
		width: 20%;
	}
	.food-img2>span:nth-of-type(3) {
		width: 20%;
		text-decoration: line-through;
		color: #ccc;
	}
	.food-img2>span:nth-of-type(4) {
		width: 20%;
		text-align: right;
		float: right;
	}
	.food-money {
		width: 98%;
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
		width: 98%;
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
		width: 98%;
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
	#bodys {
		width: 90%;
	}
	.tijiao {
		width: 80% !important;
		margin: 0 auto;
	}
	#areaLabel{
		width: 100%;
	}
	.site{
		white-space: nowrap;
    	overflow: hidden;
    	text-overflow: ellipsis;
		width: 100%;
	}
	.app-location{
  		top: 0%;
  		transform: none;
  		border-radius:0px;
  		height:100%;
	}
	#addressSelectWrapper {
 		top:-40px;
	}
	.app-location{
      padding:20px 10px 50px 10px;
}
}

.navbar-brand {
	/* height: 65px; */
	padding: 0;
}

.driss {
	/* position: relative;
	top:50px; */
	padding-top: 48px;
	box-sizing: border-box;
}

.navbar-default {
	box-sizing: border-box;
	background-color: rgba(68, 56, 130, 0.62);
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

.Div_head {
	position: relative;
	top: 55px;
}

.tijiao {
	width: 400px;
	margin-left: 20px;
	display: block;
	height: 32px;
	display: block;
}

.navbar-default .navbar-nav>li>a:hover {
	background-color: #82adbd;
	color: #fff !important;
	cursor: pointer;
}

.navbar-default .navbar-nav>li>a {
	color: #fff;
}

.navbar-default .navbar-toggle:focus, .navbar-default .navbar-toggle:hover
	{
	background-color: inherit;
}
</style>
</head>
<body>
	<form id="form1" action="/meishimeike/order/goPay" method="post">
		<header>
			<nav class="navbar navbar-default" role="navigation">
				<div id="bodys" class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#example-navbar-collapse">
							<span class="sr-only">切换导航</span> <span class="icon-bar"></span>
							<span class="icon-bar"></span> <span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="/meishimeike"><img id="logo4j"
							src="img/log4j1.png" /></a>
					</div>
					<div class="collapse navbar-collapse" id="example-navbar-collapse">
						<ul class="nav navbar-nav">
							<li><a href="/meishimeike">首页</a></li>
							<li><a href="#">我的客服</a></li>
							<li><a href="/meishimeike/order/open_user_order">我的订单</a></li>
							<li><a href="/meishimeike/pages/merchant_login.html">入住加盟</a></li>
							<li><c:if test="${user==null}">
									<a href="/meishimeike/pages/user_login.html">登录|注册</a>
								</c:if> <c:if test="${user!=null}">
									<a href="/meishimeike/pages/userInfo.html">${userName}</a>
								</c:if></li>
							<c:if test="${user!=null}">
								<li><a href="/meishimeike/pages/user_login.html">注销</a></li>
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
			<div id="bgBox"></div>
		</header>
		<div class="Div_head">
			<p>确认订单</p>
		</div>
		<div class="Div">

			<div class="driss">

				<p></p>
				<c:forEach var="userItm" items="${user.userInfo}" varStatus="ind">
					<c:if test="${userItm.ufId!=null}">
						<div class="site">
							<input type="radio" class="mySite" value="${userItm.ufId}"
								<c:if test="${user.userInfo!=null&&ind.index==0}">checked="checked"</c:if>
								name="usersite"> ${userItm.ufPhone} ${userItm.ufSite}
							${userItm.ufName}
						</div>
					</c:if>
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
					<p>支付宝在线支付</p>
				</div>
			</div>
			<div class="food">
				<div class="food-name">
					<p>${merchantData.info.mName}</p>

				</div>
				<div class="food-name2">

					<c:set value="0" var="sumresult" />
					<c:forEach var="i" items="${cList}">
						<div class="food-img2">
							<span>${i.name}</span> <span>×${i.num}</span> <span>￥${i.pice*i.num+5}</span>
							<span>￥
<fmt:formatNumber type="number" value="${i.pice*i.num}" pattern="0.00" maxFractionDigits="2"/></span>
							<c:set value="${sumresult+i.pice*i.num}" var="sumresult" />
						</div>
					</c:forEach>

				</div>
				<p style="clear: both;">
					<c:set value="${sumresult}" var="sumresult" />
				<div class="food-money">
					<span>包装费</span> <span>￥1</span>
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
				<span>￥<fmt:formatNumber type="number" value="${sumresult}" pattern="0.00" maxFractionDigits="2"/></span> &nbsp; <span>已优惠￥3</span>
			</div>
			<input type="button" value="去支付" onclick="goPay()" name="money" />
		</div>


		<div class="dizhi">
			<!-- <div class="dizhi_div">
				<h3>添加地址</h3>
				<input type="text" placeholder="请输入点餐人姓名" name="name" /> <span
					class="span1"></span> <br /> <select class="sel" name="site">
					<option>请选择地址</option>
					<option>三峡联大</option>
					<option>北大青鸟</option>
					<option>重庆企业管理学校</option>
				</select> <span class="span2"></span> <br /> <input type="text"
					placeholder="请输入点餐人手机号" name="phone" /> <span class="span3"></span>
				<br /> <input type="button" onclick="commitSite()" id="dizhi"
					class="tijiao" value="添加完成" />
				<p class="x">×</p>
			</div> -->


			<div class="app-location">
			
			<div id="x">x</div>
			
				<h1>添加一个收货地址</h1>
				

					<input id="name" type="text" name="name" placeholder="收货人姓名" >
						
						
						<input
						id="contacts" type="text" name="phone" placeholder="收货人联系方式" >
					<div id="ganged-box">
						<label for="Addr" id="areaLabel" class="address"> <input
							type="text" name="site1" id="Addr" readonly placeholder="请选择地区">
						</label>
						<div id="addressSelectWrapper">
							<div id="addressSelect">
								<div class="tip">
									<h3>所在地区</h3>
									<button type="button" id="cancel"></button>
								</div>
								<div id="address">
									<ul class="selected-address">
										<li class="lastarea" id="lastprovince">请选择</li>
										<li class="lastarea" id="lastcity">请选择</li>
										<li class="lastarea" id="lastarea">请选择</li>
										<li class="lastarea" id="lasttown">请选择</li>
									</ul>
									<div class="address-content">
										<ul id="province"></ul>
										<ul id="city"></ul>
										<ul id="area"></ul>
										<ul id="town"></ul>
									</div>
								</div>
							</div>
						</div>
					</div>

					<script src="<%=request.getContextPath()%>/pages/js/city.js"></script>

					<input type="text" id="site" name="site2"  placeholder="收货人精准地址">

					<div class="submit">
						<input type="button" onclick="commitSite()" value="添加">
					</div>
					
					<div id="msgBox">消息</div>

			</div>

		</div>


	</form>
</body>
</html>
<script>
	function goPay() {
		var index = $('.mySite').length
		if (index == 0) {
			$(".dizhi").slideToggle()
		} else {
			$('#form1').submit();
		}
	}

	
	function showMsg(str) {
		$("#msgBox").text(str);
		$("#msgBox").show()
		setTimeout(function() {
			$("#msgBox").hide()
		}, 4000)
	}
	function commitSite() {
		var nameVal=$('#name').val().trim();
		var phoneVal=$('#contacts').val().trim();
		var site01Val=$('#Addr').val().trim();
		var siteVal=$('#site').val().trim();
		if(nameVal==""||phoneVal==""||site01Val==""||siteVal==""){
			if(nameVal.length<2){
				showMsg("用户名至少两位");
				return
			}else if (!(/^((\d{3}-\d{8}|\d{4}-\d{7,8})|(1[3|5|7|8][0-9]{9}))$/.test(phoneVal))) {
                showMsg("手机号填写的格式不对，请正确填写");
                return
            }else if(site01Val==""){
            	showMsg("请选择地址");
            	return
            }else if(siteVal==""){
            	showMsg("请输入详细地址");
            	return
            }
			
		}
		$
				.ajax({
					type : "post",
					url : "/meishimeike/user/addSite",
					async : true,
					data : $('#form1').serializeArray(),
					success : function(data) {
						var jso = JSON.parse(data);
						if (jso.data == true) {
							window.location.href = "/meishimeike/pages/user_in_zhifu.jsp";
						}
					}
				});
	}
	$(".navbar-toggle").click(function() {
		$("#example-navbar-collapse").toggleClass('in');
	})
	
	$('#x').on("click",function(){
		$(".dizhi").slideToggle()
	})

	$(".driss>p:nth-of-type(2)").click(function() {
		$(".dizhi").slideToggle()
		
		
	})
	
</script>