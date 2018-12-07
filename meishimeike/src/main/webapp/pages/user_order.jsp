<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="format-detection" content="telephone=yes">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
		<title></title>
		<script type="text/javascript" src="js/jquery-2.1.0.js" ></script>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<style>
			body{
				margin: 0px;
				padding: 0px;
				background-color: #F7F7F7;
			}
			*{
				margin: 0px auto;
			}
			.navbar-brand {
				/* height: 65px; */
				padding: 0;
			}
			.navbar-default {
				box-sizing:border-box;
			    background-color: rgba(170, 234, 15, 0.62);
			}
			.navbar-default .navbar-nav > li > a {
			    color: #555;
			}
			#logo4j{
				width: 100%;
				height: 100%;
				padding-right: 20px;
			}
			#bodys{
				width: 60%;
			}
			.mar{
				margin-bottom: 0px;
			}
			.Div{
				width: 60%;
				min-height: 500px;
				background-color: #FFF;
				border: 1px solid #eee;
				border-top: 0px;
				padding: 0px 20px;
				min-width: 750px;
			}
			.time{
				width: 100%;
				height: 60px;
				padding: 15px 0px;
				margin-bottom: 10px;
			}
			.time>ul{
				width: auto;
				height: auto;
				margin-left: -40px;
				list-style: none;
			}
			.time>ul>li{
				float: left;
				width: 12%;
				min-width: 60px;
				text-align: center;
				height: 30px;
				line-height: 30px;
				margin: 0px 0.5%;
				border-radius:15px ;
				cursor: pointer;
			}
			.time>ul>li:hover{
				background-color: #e2ead9;
				transition: all 0.5s linear;
			}
			.time>ul>li:first-child{
				background-color: #cddc39e8;
			}
			.time-nav{
				width:100%;
				height: 30px;
				background-color: #e8e8e8;
				line-height: 30px;
				border: 1px solid #eee;
			}
			.time-nav>span{
				margin: 0px 1%;
				text-align: center;
				color: #808080;
				display: inline-block;
				font-size: 12px;
			}
			.time-nav>span:nth-of-type(1){
				width: 38%;
				margin-left: 10px;
				text-align: left;
			}
			.time-nav>span:nth-of-type(2){
				width: 15%;
			}
			.time-nav>span:nth-of-type(3){
				width: 15%;
			}
			.time-nav>span:nth-of-type(4){
				width: 18%;
			}
			.all-Xiang_Xi{
				width: 100%;
				height: auto;
				margin: 10px 0px;
			}
			.Xiang_Xi{
				width: 100%;
				height: 100px;
				padding: 10px 0px;
				margin-top: 15px;
				box-shadow: 0 7px 10px -2px #c7ef67;  
			}
			.Xiang_Xi>div{
				margin: 0px 1.3%;
				float: left;
				text-align: center;
				height: 80px;
			}
			.Xiang_Xi-div{
				width: 38%;
				
			}
			.Xiang_Xi-div2{
				width: 15%;
				font-size:18px ;
				line-height: 80px;
			}
			.Xiang_Xi-div3{
				width: 15%;
				font-size:14px ;
				line-height: 80px;
				color: #ADADAD;
			}
			.Xiang_Xi-div4{
				width: 18%;
			}
			.Xiang_Xi-div4>input{
				width: 80px;
				height: 25px;
				display: block;
				margin: 10px auto;
				border: 1px solid #888;
				background-color: rgba(0,0,0,0);
				outline: none;
				color: #888;
				padding: 0px;
				font-size:12px ;
			}
			.Xiang_Xi-div4>input:hover{
				color: #8bc34a;
				border-color: #8bc34a;
			}
			.Xiang_Xi-div>div:first-child{
				margin: 0px;
				border-radius:50% ;
				width: 80px;
				height:80px;
				overflow: hidden;
				float: left;
			}
			.Xiang_Xi-div>div:nth-of-type(2){
				float: left;
				margin-left: 10px;
			}
			.Xiang_Xi-div>div:nth-of-type(2)>p{
				color: #ccc;
				margin: 0px;
				font-size:12px ;
				margin-bottom: 5px;
				text-align: left;
				
			}
			.Xiang_Xi-div>div:nth-of-type(2)>p:nth-of-type(1){
				margin-top: 5px;
				font-size:14px ;
				color: #696969;
			}
			@media  screen and (max-width: 500px){
				#bodys{
					width: 100%;
				}
				.Div{
					width: 100%;
					height: 500px;
					padding: 0px 10px;
					min-width: 360px;
				}
				.time{
					margin-bottom: 0px;
				}
				.time-nav{
					display: none;
				}
				.time>ul>li{
					font-size: 12px;
				}
				.Xiang_Xi:nth-of-type(1){
					margin-top: 10px;
				}
				.Xiang_Xi{
					position: relative;
					border-bottom: 1px solid #eee;
					margin-top: 30px;
					height: 80px;
					box-sizing: content-box;
					 box-shadow: 0 7px 10px -2px #c7ef6782;  
				}
				.Xiang_Xi-div{
					width: 80%;
					position: absolute;
					left: 0px ;
					top: 0px;
				}
				.Xiang_Xi-div2{
					height: auto;
					position: absolute;
					right: 40%;
					line-height: 115px;
					font-size:14px;
				}
				.Xiang_Xi-div3{
					height: auto;
					position: absolute;
					right: 20%;
					line-height: 115px;
				}
				.Xiang_Xi-div4{
					position: absolute;
					right: 0px;
				}
				.Xiang_Xi-div4>input{
					width: 100%;
					height: 25px;
					line-height: 25px;
					margin: 0px;
					margin-top: 10px;
					border-radius:5px ;
					color: #8bc34a;
					border-color: #8bc34a;
				}
				
				.Xiang_Xi-div>div:first-child{
					width: 60px;
					height: 60px;
					margin-top: 10px;	
				}
				.Xiang_Xi-div>div:first-child>img{
					width: 60px;
					height: 60px;
				}
				.Xiang_Xi-div>div:nth-of-type(2)>p:nth-of-type(2){
					display: none;
				}
				.Xiang_Xi-div>div:nth-of-type(2){
					min-width: 200px;
				}
				
			}
		</style>
	</head>
	<body>
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
							src="img/logo2.png" /></a>
					</div>
					<div class="collapse navbar-collapse" id="example-navbar-collapse">
						<ul class="nav navbar-nav">
							<li><a href="/meishimeike">首页</a></li>
							<li><a href="#">我的客服</a></li>
							<li class="active"><a href="#">我的订单</a></li>
							<li><a href="/meishimeike/pages/merchant_login.html">入住加盟</a></li>
							<!--<li >
								
	                            	作者：3327788719@qq.com
	                            	时间：2018-12-03
	                            	描述：
	                          <c:if test="${user==null}">
									<a href="/meishimeike/pages/user_login.html">登录|注册</a>
								</c:if>
								<c:if test="${user!=null}">
									<a>${userName}</a>
								</c:if>  
							</li>
							<c:if test="${user!=null}">
									<li ><a style="color: #b34644;" href="/meishimeike/pages/user_login.html">注销</a></li>
								</c:if>
							<li class="dropdown">-->
	
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
		<div class="Div">
			<div class="time">
				<ul class="time-ul">
					<li>全部</li>
					<li>今天</li>
					<li>一天前</li>
					<li>三天前</li>
					<li>一周前</li>
				</ul>
			</div>
			<div class="time-nav">
					<span>订单内容</span>
					<span>总金额</span>
					<span>状态</span>
					<span>订单操作</span>
			</div>
			<div class="all-Xiang_Xi">
				<div class="Xiang_Xi">
					<div class="Xiang_Xi-div">
						<div><img src="img/霸王黄焖鸡.jpg" width="80px" height="80px" ></div>
						<div>
							<p><span>咖喱鸡排饭</span>+<span>韩式孜然烤藕片</span></p>
							<p>订单号：<span>79694628469856298</span></p>
							<p>下单时间：<span>2018-12-12</span></p>
						</div>
					</div>
					<div class="Xiang_Xi-div2">
						<span>34.00元</span>
					</div>
					<div class="Xiang_Xi-div3">
						<span>已完成</span>
					</div>
					<div class="Xiang_Xi-div4">
						<input type="button" value="详细信息" />
						<input type="button" value="再来一单" />
					</div>
				</div>
				
				
				<div class="Xiang_Xi">
					<div class="Xiang_Xi-div">
						<div><img src="img/霸王黄焖鸡.jpg" width="80px" height="80px" ></div>
						<div>
							<p><span>咖喱鸡排饭</span>+<span>韩式孜然烤藕片</span></p>
							<p>订单号：<span>79694628469856298</span></p>
							<p>下单时间：<span>2018-12-12</span></p>
						</div>
					</div>
					<div class="Xiang_Xi-div2">
						<span>34.00元</span>
					</div>
					<div class="Xiang_Xi-div3">
						<span>已完成</span>
					</div>
					<div class="Xiang_Xi-div4">
						<input type="button" value="详细信息" />
						<input type="button" value="再来一单" />
					</div>
				</div>
				
				<div class="Xiang_Xi">
					<div class="Xiang_Xi-div">
						<div><img src="img/霸王黄焖鸡.jpg" width="80px" height="80px" ></div>
						<div>
							<p><span>咖喱鸡排饭</span>+<span>韩式孜然烤藕片</span></p>
							<p>订单号：<span>79694628469856298</span></p>
							<p>下单时间：<span>2018-12-12</span></p>
						</div>
					</div>
					<div class="Xiang_Xi-div2">
						<span>34.00元</span>
					</div>
					<div class="Xiang_Xi-div3">
						<span>已完成</span>
					</div>
					<div class="Xiang_Xi-div4">
						<input type="button" value="详细信息" />
						<input type="button" value="再来一单" />
					</div>
				</div>
				
				<div class="Xiang_Xi">
					<div class="Xiang_Xi-div">
						<div><img src="img/霸王黄焖鸡.jpg" width="80px" height="80px" ></div>
						<div>
							<p><span>咖喱鸡排饭</span>+<span>韩式孜然烤藕片</span></p>
							<p>订单号：<span>79694628469856298</span></p>
							<p>下单时间：<span>2018-12-12</span></p>
						</div>
					</div>
					<div class="Xiang_Xi-div2">
						<span>34.00元</span>
					</div>
					<div class="Xiang_Xi-div3">
						<span>已完成</span>
					</div>
					<div class="Xiang_Xi-div4">
						<input type="button" value="详细信息" />
						<input type="button" value="再来一单" />
					</div>
				</div>
				
			</div>
			
		</div>
	</body>
</html>
<script>
	$(function () {
		$(".navbar-toggle").click(function(){
			$("#example-navbar-collapse").toggleClass('in');
		})
		$(".time>ul>li").click(function(){
			$(this).css({"background-color":"#cddc39e8"});
			$(this).siblings().css({"background-color":"rgba(0,0,0,0)"});
		})
	})
</script>