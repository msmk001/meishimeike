
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<style type="text/css">
.navbar-brand {
	/* height: 65px; */
	padding: 0;
}

.navbar-default {
	box-sizing: border-box;
	background-color: rgb(141, 187, 30);
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

.navbar {
	margin-bottom: 20px;
}
</style>
<script type="text/javascript" src="js/jquery-2.1.0.js"></script>
<style type="text/css">
body {
	background-color: #f7f7f7;
}

#bodys {
	width: 60%;
}
#logo4j{
	width: 100%;
	height: 100%;
	padding-right: 20px;
}

* {
	margin: 0;
	padding: 0;
	font-family: "微软雅黑";
	list-style: none;
}
.container-fluid {
    padding:0;
    margin-left:0 auto;
}

#top1 {
	width: 100%;
	height: 185px;
	background-image: url("img/info.jpg");
	background-repeat: no-repeat;
}

.float_left {
	float: left;
}

.float_r {
	float: right;
}

#top {
	height: 45px;
	line-height: 45px;
	background: rgba(0, 0, 0, 0.3);
	list-style: none;
}

.cent {
	width: 60%;
	margin-left: auto;
	margin-right: auto;
}

#top_main li {
	list-style: none;
	color: #fff;
	text-align: center;
	width: 100px;
}

#cent {
	width: 100%;
	height: 50px;
	background: #fff;
	box-sizing: border-box;
}

#cent_main {
	width: 60%;
	margin-left: auto;
	margin-right: auto;
}

#cent_main li {
	width: 20%;
	text-align: center;
	height: 20px;
}

#cent_main li span {
	display: inline-block;
	width: 100%;
	height: 25px;
}

.tab td {
	width: 33%;
	text-align: right;
}

.tab1 td {
	width: 33%;
	line-height: 45px;
	word-break: keep-all;
	/* 不换行 */
	white-space: nowrap;
	/* 不换行 */
	overflow: hidden;
	/* 内容超出宽度时隐藏超出部分的内容 */
	text-overflow: ellipsis;
}

#top_2 {
	width: 60%;
	margin-left: auto;
	margin-right: auto;
	margin-top: 20px;
	box-shadow: 0px 0px 5px 1px darkgray;
	background: #ffffff;
}

.itm {
	border-radius: 15px;
	margin-top: 10px;
	width: 110px;
	height: 30px;
	line-height: 30px;
	font-size: 14px;
	text-align: center;
	margin-left: 12px;
}

.itm:hover {
	background-color: darkgray;
}

.mysty {
	background-color: darkgray;
}

.mu_lu_box {
	min-height: 90px;
	margin-top: 10px;
	/* border: 1px solid; */
}

.mu_lu_box_c {
	width: 100%;
	float: left;
	min-height: 90px;
	/* border: 1px solid; */
}

.mu_lu_box_c img {
	width: 120px;
	height: 90px;
}

.btnsty {
	width: 85px;
	height: 30px;
	border-radius: 15px;
	background: #0089DC;
	color: #fff;
	outline: none;
	border-width: 0;
	-webkit-transition-duration: 0.4s;
	transition-duration: 0.4s;
}

.btnsty:hover {
	background-color: #4CAF50;
	/* Green */
	color: white;
}

#bottom {
	margin-left: auto;
	margin-right: auto;
	margin-top: 35px;
	width: 60%;
}

.bot_main {
	float: left;
	width: 50%;
}

.bot_main_li>li {
	list-style: none;
	font-size: 13px;
	color: darkgray;
	text-align: left;
	margin-top: 10px;
}

.bot_main_li {
	width: 33.3%;
	float: left;
}

.bot_main_li p {
	font-size: 15px;
}

.bot_r {
	float: left;
	font-size: 15px;
	text-align: left;
}

#caidan {
	width: 89%;
	margin-top: 10px;
	margin-bottom: 10px;
}

#gouwuche {
	display: none;
	position: fixed;
	right: 0;
	bottom: 0;
	width: 240px;
	margin-right: -240px;
	min-height: 90px;
	border-top: 1px solid #0089DC;
	box-shadow: 0 0 7px 0px #000;
}

#gowuche_logo>div {
	width: 20px;
	height: 20px;
	text-align: center;
	line-height: 20px;
	position: absolute;
	left: 0;
	top: 0;
	border-radius: 50%;
	border: 1px solid red;
}

#gowuche_logo {
	position: fixed;
	right: 0;
	bottom: 0;
	width: 240px;
	min-height: 90px;
}

#gowuche_logo>img {
	width: 70px;
	height: 70px;
}

.box {
	height: 45px;
	line-height: 45px;
	font-size: 13px;
	background: #f7f7f7;
}

#gouwu_top {
	background: #fff;
	padding-left: 5px;
	padding-top: 5px;
}

.btn1, .btn2 {
	height: 20px;
	width: 20px;
	line-height: 0px;
}

.box td {
	text-align: center;
}

.boxs {
	box-shadow: 0px 0px 5px 1px darkgray;
}

.navbar-default {
	border: 0;
}

#gowuche_logo {
	width: 70px
}

#float_r {
	width: 40%;
	height: 100px;
}

#float_leftss {
	width: 50%;
	box-sizing: border-box;
	padding-top: 15px;
	font-size: 14px;
}

#float_left_boxs_s {
	width: 49%;
	margin-top: 9px;
	background: #ffffff;
	margin-right: 5px;
}

#shangping {
	width: 10%;
	color: darkgray;
	font-size: 14px;
	text-align: center;
	padding-top: 18px;
}

#ul1>li:nth-child(2) {
	background-color: #818b35;
}

#ul1>li:nth-child(3) {
	background-color: #bf1112;
}

#ul1>li:nth-child(4) {
	background-color: #9f6207;
}

#ul1>li:nth-child(5) {
	background-color: #85ae07;
}

#ul1>li:nth-child(6) {
	background-color: #51a020;
}

#ul1>li:nth-child(7) {
	background-color: #3b948e;
}

#ul1>li:nth-child(8) {
	background-color: #163296;
}

#ul1>li:nth-child(9) {
	background-color: #c559be;
}

#btn_all {
	display: none;
}

#gouwu_top>a:hover {
	cursor: pointer;
	width: 15px;
	height: 20px;
}

#gouwu_top>a>img {
	width: 15px;
	height: 20px;
}

@media only screen and (max-width:400px) {
	#float_r {
		display: none;
	}
	#float_lefts {
		display: none;
	}
	#clear_float_r {
		display: none;
	}
	#float_leftss {
		text-align: center;
		width: 100%
	}
	#cent_main li {
		width: 33%;
	}
	#top_2 {
		width: 100%;
		margin-left: 0px;
	}
	#ents {
		margin-left: 0;
		margin-right: 0;
		width: 100%
	}
	#float_left_boxs_s {
		width: 100%;
	}
	#shangping {
		display: none;
	}
	#bottom {
		display: none;
	}
	.cent {
		width: 43%;
	}
	.itm {
		border-radius: 15px;
		margin-top: 10px;
		width: 80px;
		height: 30px;
		line-height: 30px;
		font-size: 14px;
		text-align: center;
		margin-left: 12px;
	}
	#ul1>li:nth-child(2) {
		background-color: #818b35;
	}
	#ul1>li:nth-child(3) {
		background-color: #bf1112;
	}
	#ul1>li:nth-child(4) {
		background-color: #9f6207;
	}
	#ul1>li:nth-child(5) {
		background-color: #85ae07;
	}
	#ul1>li:nth-child(6) {
		background-color: #51a020;
	}
	#ul1>li:nth-child(7) {
		background-color: #3b948e;
	}
	#ul1>li:nth-child(8) {
		background-color: #163296;
	}
	#ul1>li:nth-child(9) {
		background-color: #c559be;
	}
	#caidan {
		width: 100%;
	}
	#btn_all {
		display: none;
	}
}
</style>
</head>

<body>



	<div id="top1">
		<header>
			<nav class="navbar navbar-default" role="navigation">
				<div id="bodys" class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#example-navbar-collapse">
							<span class="sr-only">切换导航</span> <span class="icon-bar"></span>
							<span class="icon-bar"></span> <span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#"><img id="logo4j"
							src="img/logo2.png" /></a>
					</div>
					<div class="collapse navbar-collapse" id="example-navbar-collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="#">首页</a></li>
							<li><a href="#">我的客服</a></li>
							<li><a href="#">我的订单</a></li>
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
		<div style="clear: both; margin-top: 30px;" class="cent">
			<img src="img/加班狗.png" align="top" class="float_left"
				width="80" height="80"
				style="border-radius: 90px; box-shadow: 0px 0px 10px 5px #aaa;" />
			<div
				style="width: 20%; line-height: 20px; padding-top: 10px; padding-left: 20px;"
				class="float_left">
				<span style="color: #FFF; font-size: 20px;">${mer.name}</span><br>
				<br> <span style="color: #cccc33;">★★★★★</span>
			</div>
			<div class="float_r" id="float_r">
				<table style="width: 100%; height: 80%; color: #fff;" border="0"
					class="tab">
					<tr>
						<td>起送价</td>
						<td>配送费</td>
						<td>平均送达速度</td>
					</tr>
					<tr>
						<td>&nbsp;￥20</td>
						<td>&nbsp;￥${mer.delivery}</td>
						<td>&nbsp; 30分钟</td>
					</tr>
				</table>
			</div>
		</div>
		<div style="clear: both;"></div>
	</div>
	<!-- 顶部结束 -->
	<div id="cent">
		<div id="cent_main">
			<div style="width: 50%; box-sizing: border-box; padding-top: 13px;"
				class="float_left" id="float_lefts">
				<ul>
					<li class="float_left"><span
						style="border-right: 1px solid Gainsboro; color: rgba(30, 173, 250, 1);">所有商品</span></li>
					<li class="float_left"><span
						style="border-right: 1px solid Gainsboro;">评价</span></li>
					<li class="float_left"><span>商家资质</span></li>
				</ul>
			</div>
			<div class="float_left" id="float_leftss">
				<ul>
					<li class="float_r">价格 ↓</li>
					<li class="float_r">销量 ↓</li>
					<li class="float_r">评价 ↓</li>
					<li class="float_r" id="clear_float_r"
						style="color: rgba(30, 173, 250, 1);">默认排序</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- ----------------------------- -->
	<div id="top_2">
		<div id="shangping" class="float_left">商品分类</div>
		<div id="caidan" class="float_left">
			<ul id="ul1" id="color_ul">
				<li class="float_left itm mysty" id="btn_all">全部</li>
				<c:forEach var="i1" items="${ls}">
					<li class="float_left itm">${i1.name}</li>
				</c:forEach>
				<div style="clear: both;"></div>
			</ul>
		</div>
		<div style="clear: both;"></div>
	</div>
	<!-- ----------------------------------------- -->
	<div id="ents" class="cent" style="min-height: 400px;">
		<c:if test="${empty ls}">
			<div
				style="text-align: center; box-sizing: border-box; padding-top: 200px;">商家无数据!</div>
		</c:if>
		<c:forEach var="i" items="${ls}">
			<div style="clear: both;"></div>
			<div class="boxs1">
				<div style="clear: both;"></div>
				<div style="margin-top: 30px;">
					<h3 style="padding-left: 20px;">
						<span style="font-size: 18px; font-weight: 500;">${i.name}</span>
					</h3>
					<div class="mu_lu_box">
						<div class="mu_lu_box_c">
							<c:forEach var="j" items="${ls1}">
								<c:if test="${i.t_id==j.s_id}">
									<div id="float_left_boxs_s" class="float_left boxs">
										<img class="float_left" src="../img/${j.m_img}" align="top" />
										<div class="float_left"
											style="width: 60%; padding-left: 15px;">
											<span>${j.t_name }</span> <br /> <span><input
												type="button" class="float_r btnsty delete"
												onclick="add_info(this)" style="margin-top: 9px;"
												value="加入购物车" /> </span>
											<p
												style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; font-size: 13px; color: darkgray;">${j.t_info }</p>
											<span><p style="margin-top: 3px; color: #cccc33;">★★★★★</span><br />
											<span style="color: red">￥</span><span class="price"
												style="color: red">${j.t_price}</span>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<!-- ---------------------------------- -->
	<div style="clear: both;"></div>
	<p style="border-top: 0.1px solid Gainsboro; margin-top: 45px;">
	<div id="bottom">
		<div class="bot_main">
			<ui class="bot_main_li">
			<p>用户帮助
			<li>我的客服</li>
			</ui>
			<ui class="bot_main_li">
			<p>商务合作
			<li>我要开店</li>
			<li>加盟指南</li>
			<li>市场合作</li>
			<li>开放市场</li>
			</ui>
			<ui class="bot_main_li">
			<p>关于我们
			<li>团队介绍</li>
			<li>加入我们</li>
			<li>联系我们</li>
			<li>规则中心</li>
			</ui>
		</div>
		<div class="bot_main">
			<div style="width: 50%;" class="bot_r">
				<p>
					24小时客服热线 : 10105757 <br />
				<p style="margin-top: 10px; color: darkgray;">关注我们 : 扫描二维码,体验手机版

				
			</div>
			<div style="width: 50%;" class="bot_r">
				<div class="fola_l" style="width: 100%; text-align: center;">
					<img src="img/erwei.png" width="110" height="110" align="middle" />
				</div>
			</div>
		</div>
		<div style="clear: both;"></div>
		<div style="text-align: center; margin-top: 20px; font-size: 13px;">
			所有方 ：三联信息工程系14班</div>
		<div style="text-align: center; margin-top: 6px; font-size: 13px;">
			<a style="margin: auto; color: #C0C0C0;"
				href="http://www.miitbeian.gov.cn/">渝ICP备18005766号</a>
		</div>
	</div>
	<div id="gowuche_logo">
		<img src="img/gowuche_logo.png" />
		<div>0</div>
	</div>
	<!-- -------------购物车--------------------- -->
	<div id="gouwuche">
		<div class="box tag" id="gouwu_top">
			购物车[<span style="color: #4CAF50;" onclick="location.reload()">清空</span>]
			<a><img src="img/return_shop.png" /></a>
		</div>
		<div id="wai">
			<form action="${basePath}/Dindan" id="from1" method="post">
				<input type="hidden" name="piesong" value="${mer.delivery}" /> <input
					type="hidden" name="piesong" value="${mer.delivery}" />
				<div id="gou_main">
					<div class="box tag">
						<div
							style="width: 60%; background-color: #3c3c3c; color: darkgray; padding-left: 5px; box-sizing: border-box;"
							class="float_left">
							<span id="sum" style="font-size: 20px; color: #fff;">￥0</span>
							&nbsp;配送费${mer.delivery}
						</div>
						<div
							style="width: 40%; background-color: #f3f3f3; text-align: center;"
							id="jie" class="float_left">购物是空的</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script>
				var val1 = "";
				sum2 = 0;
				cont = 0;
				function delet(obj)
				{
					var sum = 0;
					var t1 = parseInt($(obj).next().text());
					if(t1 == 1)
					{
						$(obj).next().text(1 + "")
					}
					else
					{
						$(obj).next().text((t1 - 1) + "")
						var num1 = parseInt($(obj).parent().next().text().substring(1))
						sum2 -= num1
						$('#sum').text("￥" + sum2);
					}

				}
				function add(obj)
				{
					var t1 = parseInt($(obj).prev().text());

					$(obj).prev().text((t1 + 1) + "")
					var num1 = parseInt($(obj).parent().next().text().substring(1))
					sum2 += num1
					$('#sum').text("￥" + sum2);
				}
				$(function() {

				});

				function add_info(obj1)
				{
					var sum = 0;
					var b = true;
					var text1 = $(obj1).parent().prev().prev().text();
					var text2 = parseInt($(obj1).parent().parent().find(".price").text());
					$('.price1').each(
						function()
						{
							var name = $(this).prev().prev().text();
							if(text1 == name)
							{
								var danjia = parseInt($(this).prev()
									.find(".danjia").text());
								$(this).prev().find(".danjia").text(
									(danjia + 1) + "");
								b = false;
								return;
							}
						});
					sum2 = text2 + sum2;
					$('#jie').height($('#jie').prev().height());
					$('#jie').text("去结算");
					$('#sum').text("￥" + (sum2));
					$('#jie').on("click", function()
					{
						$('#inpu1').after("<input type='hidden' name='count' value='"+cont+"'>");
						val1 = $('#wai').html();
						sessionStorage.setItem("data", val1)
						if($('#user').text()=="登录 | 注册")
						{
							location.href ="<%=(String) request.getAttribute("basePath")%>/pc/user_login.jsp";
							return;
						}
						location.href = "
		/pc/dindan.jsp"
								return;
							})

			if (b == false) {
				return;
			} else {
				$('#gou_main')
						.prepend(
								'<div class="box" style="border-bottom: 1px solid darkgray;background: #f7f7f7;">'
										+ "<table class='tab1' style='width: 100%;table-layout:fixed;'>"
										+ '<tr style="width: 100%;">'
										+ '<td class="names">'
										+ text1
										+ '</td>'
										+ '<td><input class="btn1" onclick="delet(this)" type="button" value="-" /><span class="danjia">1</span><input onclick="add(this)" class="btn2" type="button" value="+" /></td>'
										+ '<td style="color:red;font-size: 13px;" class="price1">￥'
										+ text2
										+ '</td>'
										+ '</tr>'
										+ "</table><input class='one' type='hidden' name='jia"
										+ (cont + 1)
										+ "'"
										+ "value=''/>"
										+ "<input type='hidden' name='name"
										+ (cont + 1)
										+ "'"
										+ "value='"
										+ text1
										+ "'"
										+ "/><input id='inpu1' type='hidden' name='num"
										+ (cont + 1)
										+ "'"
										+ "value='"
										+ text2
										+ "'" + "/>" + "</div>");
				$('#jie').css("background", "#4CAF50");
				cont += 1;
			}
		}
		$(function() {
			$("#gowuche_logo").click(function() {
				$("#gouwuche").animate({
					"margin-right" : "0px"
				}, 500);
				$("#gouwuche").css({
					"display" : "block"
				});
			})
		})

		$(function() {
			$("#ul1>li").mouseover(function() {
				$("#ul1>li").css({
					"color" : "#fff"
				});
				$(this).css({
					"color" : "#19e4c0",
					"cursor" : "pointer"
				});
			})
		})
		$(function() {
			$(".btnsty").click(
					function() {
						$("#gowuche_logo>div").text(
								parseInt($("#gowuche_logo>div").text()) + 1);
					})
		})
		$(function() {
			$("#gouwu_top>a>img").click(function() {
				$("#gouwuche").animate({
					"margin-right" : "-240px"
				}, 500);
			})
		})
	</script>


</body>

</html>