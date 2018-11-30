<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<meta name="viewport"
	content="width=device-width, initial-scale=1,user-scalable=0">
<link rel="stylesheet" href="/meishimeike/pages/css/indexs.css" />
<link rel="stylesheet" href="/meishimeike/pages/css/bootstrap.css" />
<style type="text/css">
 .navbar-brand {
	/* height: 65px; */
	padding: 0;
}
.navbar-default {
    background-color: #fff;
}
 .navbar-default .navbar-nav > li > a:hover {
    background-color: #0f698a;
    color: #19e4c0 !important;
	cursor: pointer;
	
}
#logo4j{
	width: 65%;
	height: 100%;
	margin-left: 0;
}
</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-default" role="navigation">
			<div id="bodys" class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#example-navbar-collapse">
						<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"><img id="logo4j"
						src="/meishimeike/pages/img/logo4j.jpg" /></a>
				</div>
				<div class="collapse navbar-collapse" id="example-navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">首页</a></li>
						<li><a href="#">我的客服</a></li>
						<li><a href="#">我的订单</a></li>
						<li><a href="#">入住加盟</a></li>
						<li >
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



	<section>
		<nav>
			<div id="section-div">
				<div id="section-div-1">当前位置 : 红旗河沟</div>
				<div id="section-div-2"></div>
				<div id="section-div-3">
					<input id="section-input" type="text" placeholder="搜索商家" />
				</div>
			</div>
		</nav>

		<section>
			<p class="clearp">
			<div id="imgBox">
				<img id="img01" src="/meishimeike/pages/img/bg1.jpeg" width="100%" height="100%" />
			</div>
		</section>

		<nav>
			<div id="nav_2">
				<span id="fen">商家分类 |</span> <a class="nav2-a">美食</a> <a
					class="nav2-a">快餐</a> <a class="nav2-a">小吃</a> <a class="nav2-a">甜品</a>
				<a class="nav2-a">早餐</a> <a class="nav2-a">午餐</a> <a class="nav2-a">下午茶</a>
				<a class="nav2-a">晚餐</a>
			</div>
		</nav>
		<div id="nav_3">
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★</p>
					<p class="caipinBoxp3">配送费￥5</p>
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/加班狗.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">加班狗大坪店</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<p class="clearp">
		</div>
	</section>


	<!---------------------center-------------------------------------->
	<p class="clearp"
		style="border-bottom: 1px solid Gainsboro; margin: 30px 0">
	<footer id="footer1">
		<div>
			<ul id="footer1_ul1">
				<li class="caiming">用户帮助</li>
				<li class="itm">我的客服</li>
			</ul>
			<ul id="footer1_ul2">
				<li class="caiming">商务合作</li>
				<li class="itm">我要开店</li>
				<li class="itm">加盟指南</li>
				<li class="itm">市场合作</li>
				<li class="itm">开放市场</li>
			</ul>
			<ul id="footer1_ul3">
				<li class="caiming">关于我们</li>
				<li class="itm">团队介绍</li>
				<li class="itm">加入我们</li>
				<li class="itm">联系我们</li>
				<li class="itm">规则中心</li>
			</ul>
			<ul id="footer1_ul4">
				<li class="caiming">24小时客服热线：10105757</li>
				<li class="itm">关注我们：扫描二维码，体验手机版</li>
			</ul>
			<ul id="footer1_ul5">
				<img src="/meishimeike/pages/img/erwei.png" / width="150"
					height="150">
			</ul>

			<p class="clearp">
			<div style="text-align: center; margin-top: 20px; font-size: 13px;">
				所有方 ：美食美客项目小组</div>
			<div style="text-align: center; margin-top: 6px; font-size: 13px;">
				<a style="margin: auto; color: #C0C0C0;"
					href="http://www.miitbeian.gov.cn/">渝ICP备18005766号</a>
			</div>
		</div>
	</footer>

</body>
</html>
<script type="text/javascript" src="js/jquery-2.1.0.js"></script>
<script type="text/javascript" src="js/tianlinxin_index.js"></script>