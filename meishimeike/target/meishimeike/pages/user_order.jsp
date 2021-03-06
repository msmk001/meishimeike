<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="format-detection" content="telephone=yes">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
<link href="/meishimeike/pages/img/myimg.ico" rel="SHORTCUT ICON" />

<title>我的订单</title>
<script type="text/javascript"
	src="/meishimeike/pages/js/jquery-2.1.0.js"></script>
<link rel="stylesheet" type="text/css"
	href="/meishimeike/pages/css/bootstrap.css" />
<style>
.navbar {
	position: fixed;
	width: 100%;
	border: 1px solid transparent;
	margin-bottom: 20px;
	z-index: 2;
	top: 0;
	/* background-image: linear-gradient(-90deg, #FFF -20%, #FFF 100%); */
}

#bgBox {
	width: 100%;
	height: 52px;
	background-color: #FFFFFF;
	top: 0;
	position: fixed;
	min-width: 1300px;
}

body {
	margin: 0px;
	padding: 0px;
	background-color: #F7F7F7;
	min-width: 1300px;
}

* {
	margin: 0px auto;
}

.navbar-brand {
	/* height: 65px; */
	padding: 0;
}

.navbar-default {
	box-sizing: border-box;
	background-color: rgba(68, 56, 130, 0.62);
}

.navbar-default .navbar-nav>li>a {
	color: #555;
}

.navbar-default .navbar-nav>li>a:hover {
	background-color: #82adbd;
	color: #fff !important;
	cursor: pointer;
}

.navbar-default .navbar-nav>li>a {
	color: #fff;
}

#logo4j {
	width: 100%;
	height: 100%;
	padding-right: 20px;
}

#bodys {
	width: 60%;
}

.mar {
	margin-bottom: 0px;
}

body {
	/* line-height: 0; */
	
}

.Div {
	width: 60%;
	min-height: 900px;
	background-color: #FFF;
	margin-top: 80px;
	border: 1px solid #eee;
	border-top: 0px;
	padding: 0px 20px;
	min-width: 750px;
	border: 1px solid #eee;
}

.time {
	width: 100%;
	height: 60px;
	padding: 15px 0px;
	margin-bottom: 10px;
}

.time>ul {
	width: auto;
	height: auto;
	margin-left: -40px;
	list-style: none;
}

.time>ul>li {
	float: left;
	width: 12%;
	min-width: 60px;
	text-align: center;
	height: 30px;
	line-height: 30px;
	margin: 0px 0.5%;
	border-radius: 15px;
	cursor: pointer;
}

.time>ul>li:hover {
	background-color: #e2ead9;
	transition: all 0.5s linear;
}

.time>ul>li:first-child {
	background-color: #cddc39;
}

.time-nav {
	width: 100%;
	height: 30px;
	background-color: #e8e8e8;
	line-height: 30px;
	border: 1px solid #eee;
}

.time-nav>span {
	margin: 0px 1%;
	text-align: center;
	color: #808080;
	display: inline-block;
	font-size: 12px;
}

.time-nav>span:nth-of-type(1) {
	width: 38%;
	margin-left: 10px;
	text-align: left;
}

.time-nav>span:nth-of-type(2) {
	width: 15%;
}

.time-nav>span:nth-of-type(3) {
	width: 15%;
}

.time-nav>span:nth-of-type(4) {
	width: 18%;
}

.all-Xiang_Xi {
	width: 100%;
	min-height: 100px;
	margin: 10px 0px;
}
.Xiang_Xi:after {
content: "";
display: block;
clear: both;
width: 100%;
}
.Xiang_Xi {
	/* max-width:38%; */
	
	
	margin:10px 0 !important;
	
	width: 100%;
	min-height: 100px;
	
	margin: 10px 0;
	box-sizing: border-box;
	box-shadow: 0 7px 10px -2px rgba(139, 132, 178, 0.26);
}

.Xiang_Xi>div {
	margin: 0px ;
	float: left;
	text-align: left;
	
	min-height: 80px;
}
.box01{
	width: 170px;
	    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
	}

.Xiang_Xi-div {
	/*  */
	width: 45%;
	
}

.Xiang_Xi-div2 {
	width: 17%;
	font-size: 18px;
	padding-left:10px;
	line-height: 80px;
}

.Xiang_Xi-div3 {
	width: 17%;
	font-size: 14px;
	line-height: 80px;
	padding-left:20px;
	color: #ADADAD;
}

.Xiang_Xi-div4 {
	position:relative;
	right:0;
	width: 18%;
}

.Xiang_Xi-div4>input {
	width: 80px;
	height: 25px;
	display: block;
	margin: 10px auto;
	border: 1px solid #888;
	background-color: rgba(0, 0, 0, 0);
	outline: none;
	color: #888;
	padding: 0px;
	font-size: 12px;
}

.Xiang_Xi-div4>input:hover {
	color: #8bc34a;
	border-color: #8bc34a;
}

.Xiang_Xi-div>div:first-child {
	margin: 0px;
	border-radius: 50%;
	width: 80px;
	height: 80px;
	overflow: hidden;
	float: left;
}

.Xiang_Xi-div>div:nth-of-type(2) {
	float: left;
	margin-left: 10px;
}

.Xiang_Xi-div>div:nth-of-type(2)>p {
	color: #598c6e;
	margin: 0px;
	font-size: 12px;
	margin-bottom: 5px;
	text-align: left;
}

/* .Xiang_Xi-div>div:nth-of-type(2)>p:nth-of-type(1) {
	margin-top: 5px;
	font-size: 14px;
	color: #696969;
} */
@media screen and (max-width: 500px) {
		.Xiang_Xi-div3 {
	width: 20%;

}

	body{
		min-width:200px; 
	}
	.box01 {
		padding-top: 8px;
	}
	#bodys {
		width: 100%;
	}
	.Div {
		width: 100%;
		min-height: 500px;
		padding: 0px 10px;
		min-width: 360px;
	}
	.mynodep {
		max-width: 200px;
		white-space: nowrap;
		text-overflow: ellipsis;
		overflow: hidden;
	}
	.time {
		margin-bottom: 0px;
	}
	.time-nav {
		display: none;
	}
	.time>ul>li {
		font-size: 12px;
	}
	.Xiang_Xi:nth-of-type(1) {
		margin-top: 10px;
	}
	.Xiang_Xi {
		position: relative;
		border-bottom: 1px solid #eee;
		margin-top: 30px;
		min-height: 80px;
		box-sizing: content-box;
		box-shadow: 0 7px 10px -2px #c7ef6782;
	}
	.Xiang_Xi-div {
		width: 80%;
		
		left: 0px;
		top: 0px;
	}
	.Xiang_Xi-div2 {
		height: auto;
		position: absolute;
		right: 40%;
		bottom:2px;
		line-height: 115px;
		font-size: 14px;
	}
	.Xiang_Xi-div3 {
		height: auto;
		position: absolute;
		right: 24%;
		line-height: 115px;
	}
	.Xiang_Xi-div4 {
		position: absolute;
		right: 0px;
	}
	.Xiang_Xi-div4>input {
		width: 100%;
		height: 25px;
		line-height: 25px;
		margin: 0px;
		margin-top: 10px;
		border-radius: 5px;
		color: #8bc34a;
		border-color: #8bc34a;
	}
	.Xiang_Xi-div>div:first-child {
		width: 60px;
		height: 60px;
		margin-top: 10px;
	}
	.Xiang_Xi-div>div:first-child>img {
		width: 60px;
		height: 60px;
	}
	
	.Xiang_Xi-div>div:nth-of-type(2) {
		min-width: 200px;
	}
	.Xiang_Xi {
		position: relative;
	}
	.Xiang_Xi-div2, .Xiang_Xi-div3 {
		position: absolute;
		bottom: 8px;
	}
	.navbar-toggle {
		border-color: #fff !important;
		background-color: transparent;
		color: #fff;
		border: 1px solid transparent;
	}
	.navbar-default .navbar-toggle .icon-bar {
		background-color: #dff0d8 !important;
	}
	.navbar-default .navbar-toggle:focus, .navbar-default .navbar-toggle:hover
		{
		background-color: inherit;
		
	}
}

.navbar-default .navbar-nav > .active > a, .navbar-default .navbar-nav > .active > a:focus, .navbar-default .navbar-nav > .active > a:hover {
    color: #FFFFFF;
    background-color: #82adbd;
}

.Xiang_Xi-div2 {
	color: red;
}

.navbar-default .navbar-toggle {
	border-color: #ddd;
}



</style>
</head>
<body>
<!-- ----------------------隐藏层---------------------------->



	<header>
		<nav class="navbar mar navbar-default" role="navigation">
			<div id="bodys" class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#example-navbar-collapse">
						<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/meishimeike"><img id="logo4j"
						src="/meishimeike/pages/img/log4j1.png" /></a>
				</div>
				<div class="collapse navbar-collapse" id="example-navbar-collapse">
					<ul class="nav navbar-nav">
						<li><a href="/meishimeike">首页</a></li>
						<li><a href="#">我的客服</a></li>
						<li class="active"><a href="#">我的订单</a></li>
						<li><a href="/meishimeike/pages/merchant_login.html">入住加盟</a></li>

						<li><c:if test="${user==null}">
								<a href="/meishimeike/pages/user_login.html">登录|注册</a>
							</c:if> <c:if test="${user!=null}">
								<a href="/meishimeike/pages/userInfo.html">${userName}</a>
							</c:if></li>
						<c:if test="${user!=null}">
							<li><a href="/meishimeike/pages/user_login.html">注销</a></li>
						</c:if>

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
	<div class="Div">
		<div class="time">
			<ul class="time-ul">
				<li style="background-color: #e2ead9;">全部</li>
				<li>今天</li>
				<li>一天前</li>
				<li>三天前</li>
				<li>一周前</li>
			</ul>
		</div>
		<div class="time-nav">
			<span>订单内容</span> <span>总金额</span> <span>状态</span> <span>订单操作</span>
		</div>
		<div class="all-Xiang_Xi">

			<c:if test="${userOrderFormData==null||userOrderFormData=='[]'}">
				<div id="nullbox">你还没有订单,快去下单吧</div>
			</c:if>


			<c:forEach var="i" items="${userOrderFormData}">
				<div class="Xiang_Xi">
					<div class="Xiang_Xi-div">
						<div>
							<img src="/meishimeike/pages/img/munanniu.png" width="80px"
								height="80px">
						</div>
						<div class="box01" style="line-height: 1.15;">

							<c:forEach var="j" items="${i.commodity}">
								<p>
									<span>${j.name}</span> x <span>${j.num}</span>
								</p>
							</c:forEach>

							<p class="mynodep">
								订单号：<span>${i.oTradeNo}</span>
							</p>
							<p class="mynodep">
								下单时间：<span><fmt:formatDate value="${i.oCreate}"
										type="both" /></span>
							</p>
						</div>
					</div>
					<p style="">
					<div class="Xiang_Xi-div2">
						<span><fmt:formatNumber type="number" value="${i.oPrice}" pattern="0.00" maxFractionDigits="2"/></span>
					</div>
					<div class="Xiang_Xi-div3">
						<c:if test="${i.oCode==1}">
							<span>未支付</span>
						</c:if>
						<c:if test="${i.oCode==2}">
							<span style="color: #286090">已支付</span>
						</c:if>
					</div>
					<div class="Xiang_Xi-div4">
						<input type="button" class="info" value="详细信息" /> <input type="button"
							value="再来一单" />
					</div>
				</div>
				<p style="clear: both;height: 20px;">
			</c:forEach>



		</div>

	</div>
	<p style="clear: both;">
</body>
</html>
<script>
	$(function() {
		$(".navbar-toggle").click(function() {
			$("#example-navbar-collapse").toggleClass('in');
		})
		$(".time>ul>li").click(function() {
			$(this).css({
				"background-color" : "#cddc39e8"
			});
			$(this).siblings().css({
				"background-color" : "rgba(0,0,0,0)"
			});
		});
		
		$('.info').on("click",function(){
			alert(1)
		})
	})
</script>