<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=0">


<style type="text/css">
* {
	font-family: "微软雅黑";
	margin: 0;
	padding: 0;
}

body {
	background-color: #f7f7f7;
	background-image: linear-gradient(-90deg, #b5a116 -20%, #73f0b1 100%);
}

.title {
	width: 100%;
	height: 40px;
	font-size: 22px;
	font-weight: 700;
}

#main {
	position: relative;
	width: 500px;
	min-height: 500px;
	left: 50%;
	top: 30px;
	transform: translateX(-50%);
}

#text {
	text-align: center;
	height: 40px;
	line-height: 40px;
}
</style>
</head>
<body>


	<div id="main">



		<h2 id="text">美食美客,模块快速访问</h2>

		<hr color="#fff">

		<div class="title">胡鹏</div>
		<a href="/meishimeike/pages/admin_login.html">管理员登录页面</a> <br> <br>

		<a href="/meishimeike/pages/admin_index.jsp">管理员后台页面</a> <br> <br>

		<a href="/meishimeike/pages/admin_verify.jsp">管理员查看商家详细资料页面</a> <br>
		<br>
		<hr color="#fff">


		<div class="title">周伟</div>
		<a href="/meishimeike/pages/user_login.html">用户登录注册</a> <br> <br>

		<a href="/meishimeike/pages/indexs.jsp">首页</a><br> <br> <a
			href="/meishimeike/pages/merchant_login.html">商家登录注册</a> <br> <br>

		<a href="/meishimeike/pages/merchant_verification.html">商家提交资料页面</a> <br>
		<br>


		<hr color="#fff">


		<div class="title">田林鑫</div>

		<a href="/meishimeike/pages/merchant_info.jsp">商品页面</a> <br> <br>
		<a href="/meishimeike/pages/merchant_manage.jsp">商家后台管理界面</a> <br> <br>


		<hr color="#fff">


		<div class="title">杨松林</div>

		<a href="/meishimeike/pages/user_in_zhifu.html">确认订单页面</a> <br> <br>
		
		<hr color="#fff">
		<div class="title">李佳琪(服务器运维)</div>
		<a href="http://www.160go.cn:8888/login">宝塔运维页面</a> <br> <br>		

	</div>




</body>
</html>
