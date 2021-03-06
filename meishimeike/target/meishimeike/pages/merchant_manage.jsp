<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=0.5">

<script type="text/javascript"
	src="/meishimeike/pages/js/jquery-2.1.0.js"></script>
<link rel="stylesheet" href="/meishimeike/pages/css/bootstrap.css" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>商家后台</title>
<style type="text/css">
#footer1 {
	font-size: 16px;
	margin-top: 50px;
	width: 100%;
	height: 200px;
}

#footer1>div {
	text-align: center;
	width: 70%;
	height: 200px;
	width: 70%;
}

#footer1_ul1 {
	width: 20%;
}

#footer1_ul2 {
	width: 20%;
}

#footer1_ul3 {
	width: 20%;
}

.nav {
	position: relative;
}

#footer1_ul4 {
	width: 20%;
}

#footer1_ul5 {
	width: 20%;
	height: 250px;
}

#footer1>div>ul {
	line-height: 25px;
	padding: 20px;
	float: left;
}

.itm {
	color: darkgray;
	font-size: 13px;
}

#footer1>div {
	width: 60%;
	margin: 0 auto;
}

#footer1>div>ul>li {
	list-style: none;
}

/* 导航栏结束 */
.box1_s {
	width: 280px;
	height: 180px;
	display: none;
	border: 1px solid;
	position: fixed;
	top: 35%;
	left: 43%;
	background: gray;
	text-align: center;
}

#main {
	width: 60%;
	margin-left: auto;
	margin-right: auto;
}

#box1x {
	left: 40%;
	width: 340px;
	height: 150px;
	display: none;
	border: 1px solid;
	border-radius: 10px;
	position: fixed;
	padding: 5px;
	top: 35%;
	background: rgb(147, 138, 193);
	text-align: center;
}

* {
	/* //border: 1px solid; */
	margin: 0;
	padding: 0;
}

#box3 {
	margin-top: 20px;
	box-shadow: 0px 0px 5px 0px darkgray;
	min-height: 40px;
	background: #fff;
}

#btn6 {
	margin: 0px 5px;
	line-height: 20px;
}

.box_span {
	overflow: hidden;
	margin-left: 10px;
	height: 33px;
	line-height: 33px;
	border-radius: 33px;
	border: 1px solid;
	width: 110px;
	text-align: center;
	margin-top: 3px; vertical-align : bottom; background : #ffffff;
	display: inline-block;
	background: #ffffff;
	vertical-align: bottom;
}

.box_span:hover {
	background: darkgray;
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

.float_left {
	float: left;
}

.float_r {
	float: right;
}

* {
	
	
}
.navbar-toggle{
	color: #fff;
	background-color: #ddd;
}
.btnsty {
	width: 65px;
	height: 30px;
	border-radius: 15px;
	background: #0089DC;
	color: #fff;
	font-size: 13px;
	outline: none;
	border-width: 0;
}

html, body {
	font-family: "微软雅黑";
	background: #f7f7f7;
	margin: 0;
	padding: 0;
}

#top {
	height: 75px;
	line-height: 75px;
	background: rgba(30, 173, 250, 1);
}

#top_main {
	width: 60%;
	margin-left: auto;
	margin-right: auto;
}

#touxiang {
	width: 70px;
	height: 70px;
	border-radius: 50%;
	border: 1px solid darkgray;
	box-shadow: 0px 0px 10px 5px #fff;
}

#top_main li {
	list-style: none;
	color: #fff;
	text-align: center;
	width: 100px;
}

#val1 {
	color: red;
}

#top_main li:hover {
	background-color: rgb(110, 183, 250);
}

#top_main li:first-of-type {
	background-color: rgb(110, 183, 250);
}

a:link {
	text-decoration: none;
}

.navbar-brand {
	/* height: 65px; */
	padding: 0;
}

.navbar-default {
	box-sizing: border-box;
	background-color: rgba(68, 56, 130, 0.62);
}

#bgBox {
	width: 100%;
	height: 52px;
	background-color: #FFFFFF;
	position: fixed;
}

.navbar-default .navbar-nav>li>a {
	color: #fff;
}

#bodys {
	width: 60%;
}

#logo4j {
	width: 100%;
	height: 100%;
	padding-right: 20px;
}

#float_left_boxss {
	width: 49%;
	margin-top: 8px;
	background: #ffffff;
	margin-right: 5px;
	box-shadow: 0px 0px 5px 0px darkgray;
}

.btnsty_1 {
	font-size: 18px;
	text-algin: center;
	width: 30px;
	height: 30px;
	border-radius: 50px;
	background: #0089DC;
	color: #fff;
	outline: none;
	border-width: 0;
}

#form5x tr {
	height: 30px;
	line-height: 30px;
}

.tishi {
	font-size: 15px;
	padding-left: 20px;
	color: #777;
	box-sizing: border-box;
}

@media only screen and (max-width:400px) {
	#box1 {
		overflow: hidden;
	}
	#bodys {
		width: 100%;
	}
	#shangping_title {
		display: none;
	}
	#main {
		width: 100%;
	}
	#touxiang {
		width: 50px;
		height: 50px;
		margin-top: -15px
	}
	#box3 {
		margin-top: 30px;
	}
	.box_span {
		width: 80px;
	}
	.btnsty_1 {
		font-size: 18px;
		text-algin: center;
		width: 30px;
		height: 30px;
		border-radius: 50px;
		background: #0089DC;
		color: #fff;
		outline: none;
		border-width: 0;
	}
	#box1x {
		left: 4%;
		width: 340px;
		height: 120px;
		display: none;
		border: 1px solid;
		border-radius: 10px;
		position: fixed;
		top: 35%;
		background: gray;
		text-align: center;
	}
	#float_left_boxss {
		width: 100%;
	}
	#box2 {
		left: 19%;
	}
	.box1_s {
		left: 18%;
	}
	#footer1 {
		display: none;
	}

}




.navbar {
	position: fixed;
	width: 100%;
	border: 1px solid transparent;
	z-index: 2;
	top: 0;
}

#mBox01 {
	padding-top: 70px;
}

.navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:focus,
	.navbar-default .navbar-nav>.active>a:hover {
	color: #FFFFFF !important;
	background-color: #82adbd;
}

.navbar-default .navbar-nav>li>a:hover {
	background-color: #82adbd;
	color: #fff !important;
	cursor: pointer;
}

input, input:focus, input:active {
	user-select: text;
}

#box1 {
	background-color: rgb(147, 138, 193);
	color: #fff;
	padding-left: 2px;
}

#box1 td.td01 {
	width: 120px !important;
}
#box1 input[type=text],#box1 input[type=number] {
	color: #000;
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
					<a class="navbar-brand" href="/meishimeike"><img id="logo4j"
						src="/meishimeike/pages/img/log4j1.png" /></a>
				</div>
				<div class="collapse navbar-collapse" id="example-navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="javascript:;">首页</a></li>
						<li><a href="#">我的客服</a></li>
						<li><a href="/meishimeike/order/open_merchant_order">我的订单</a></li>
						<li><a href="/meishimeike/pages/merchant_login.html">入住加盟</a></li>
						<li><a href="/meishimeike/merchant/zhuxiao">注销</a></li>

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
	<div style="clear: both;"></div>
	<div id="main">
		<div id="mBox01">
			欢迎商户 : <span style="color: red;">${merchantData.info.name}</span><img
				id="touxiang" class="float_r" alt=""
				src="img/${merchantData.info.mLogo}" width="130" height="90" />
		</div>

		<h3 id="shangping_title" style="margin-top: 15px;">我的商品目录</h3>
		<div id="box3">

			<c:forEach var="i" items="${merchantData.classifyList}">
				<span class="box_span">${i.cName}</span>
			</c:forEach>
			<input class="btnsty_1" type="button" id="btn6" class="btnsty"
				value="+">
			<c:if
				test="${merchantData.classifyList==null||merchantData.classifyList=='[]'}">
				你还没有商品目录,请添加目录,例:米饭,饮品
			</c:if>

		</div>

		<c:if
			test="${merchantData.classifyList==null||merchantData.classifyList=='[]'}">

			<div style="height: 300px;"></div>
		</c:if>

		<c:forEach var="i" items="${merchantData.classifyList}">
			<div class="boxs1">
				<div style="clear: both;"></div>
				<div style="margin-top: 30px;">
					<h3 style="padding-left: 20px;">
						<span style="font-size: 20px; font-weight: 500;">${i.cName}</span>
						<input type="button" onclick="ck(this,${i.cId})"
							class="btn1 btnsty" value="添加商品"> <input type="button"
							onclick="drop_classify(${i.cId},this)" class="btn1 btnsty"
							value="删除目录">
					</h3>
					<div class="mu_lu_box">
						<div class="mu_lu_box_c">
							<c:set var="bool" value="true" />
							<c:forEach var="j" items="${merchantData.commodity}" varStatus="">

								<c:if test="${i.cId==j.cId}">

									<div id="float_left_boxss" class="float_left boxs">
										<img class="float_left" src="img/${j.cyImg}" align="top" />
										<div class="float_left"
											style="width: 60%; padding-left: 15px;">
											<span style="font-weight: bold;">${j.cyName }</span> <br />
											<span><input type="button"
												class="float_r btnsty delete"
												onclick="delete_m(${j.cyId},this)" style="margin-top: 9px;"
												value="删除" /> </span>
											<div style="height: 0px;"></div>
											<p
												style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; font-size: 13px; color: darkgray;">${j.cyRemark}</p>
											<span><p style="margin-top: 3px; color: #cccc33;">★★★★★</span><br />
											<span style="color: red">￥ ${j.cPrice }</span>
										</div>
									</div>
									<c:set var="bool" value="false" />
								</c:if>

							</c:forEach>


							<c:if test="${bool}">
								<div class="tishi">该目录下还没有商品,请添加</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		
		<div style="clear: both;"></div>
		
		<!-- ------------------隐藏层------------------------- -->
		<div id="box1" class="box1_s">
			<form id="form5" method="post"
				action="/meishimeike/commodity/addCommodity"
				enctype="multipart/form-data">
				<input id="s_id" type="hidden" name="id" value="" /> <input
					id="s_name" type="hidden" name="s_name" value="" />
				<table
					style="width: 100%; text-align: left; border-collapse: separate; border-spacing: 0px 8px;">
					<tr>
						<td>图片</td>
						<td class="td01"><input name="cyImg" type="file"
							required="required"
							accept="image/gif, image/jpeg, image/png, image/jpg, image/bmp" /></td>
					</tr>
					<tr>
						<td>商品名字</td>
						<td class="td01"><input name="cyName" required="required"
							type="text" /></td>
					</tr>

					<tr>
						<td>单价</td>
						<td class="td01"><input name="cPrice" required="required"
							type="number" step="0.01" min="0.01" max="999999"></td>
					</tr>
					<tr>
						<td>商品描述</td>
						<td class="td01"><input type="text" required="required"
							name="cyRemark" /></td>
					</tr>
					<tr align="center">
						<td><input type="submit" id="btn5" class="btnsty" value="提交" />
						</td>
						<td><input type="button" id="btn2" class="btnsty" value="关闭" /></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="box1x">
			<form id="form5x" method="post" onsubmit="return false">
				<input type="hidden" name="id" value="${merchantData.id}" />
				<table style="width: 100%; text-align: center;">
					<tr>
						<td style="color: white;">商品目录名</td>
						<td><input name="name" required="required" id="inp1"
							type="text" /></td>
					<tr />

					<tr>
						<td><input type="button" class="btnsty" id="btn5x" value="提交" />
						</td>
						<td><input type="button" class="btnsty" id="btn2x" value="关闭" /></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="box2" class="box1_s">
			<div style="margin-top: 45px; color: #fff;">确认删除</div>
			<div>
				<div class="float_left" style="width: 49%; margin-top: 30px;">
					<input class="btnsty" id="box2_b1" type="button" value="确认" />
				</div>
				<div class="float_left" style="width: 49%; margin-top: 30px;">
					<input class="btnsty" id="box2_b2" type="button" value="取消" />
				</div>
			</div>
		</div>
		<!-- ------------------隐藏层结束------------------------- -->
	</div>




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
	<script>
			//******************************************
			function drop_classify(t_id,obj1)
			{
				$('#box2').show();
				$('#box2_b2').on("click", function()
				{
					$('#box2').hide();
				});
				$('#box2_b1').on("click", function() {
					
					$.ajax({
						type:"post",
						data:{"id":t_id},
						url:"/meishimeike/merchant/deleteClassifyList",
						async:true,
						success:function(data)
						{
							var jso=JSON.parse(data);
							
							if(jso.data==true)
							{
								history.go(0);
								//$('#box2').hide();
							}else{
								
							}
						},error:function(a,b)
						{
							alert(b)
						}
					});
					
				})
			}
			function delete_m(id,obj1)
			{
				$('#box2').show();
				$('#box2_b2').on("click", function()
				{
					$('#box2').hide();
				});
				$('#box2_b1').on("click", function() {
					$('#box2').hide();
					$.ajax({
						type:"post",
						data:{"id":id},
						url:"/meishimeike/commodity/deleteCommodity",
						async:false,
						success:function(data)
						{
							var jso=JSON.parse(data);
							if(jso.data==true)
							{
								$(obj1).parents(".boxs").remove();
							}else{
								
							}
						},error:function(a,b)
						{
							
						}
					});
					
				})
			}
			var box1 = document.getElementById("box1");
			var box1x = document.getElementById("box1x");
			var btn2 = document.getElementById("btn2");
			var btn5 = document.getElementById("btn5");
			var btn6 = document.getElementById("btn6");
			var btn2x = document.getElementById("btn2x");
			var btn5x = document.getElementById("btn5x");

			function ck(obj1,obj2)
			{
				$('#s_id').val(obj2)
				var obj2 = $(obj1).prev();
				$('#s_name').val(obj2.text());
				box1.style.display = "block";
			}
			btn2.onclick = function()
			{
				box1.style.display = "none";
			}
			btn6.onclick = function()
			{
				box1x.style.display = "block";
			}
			btn2x.onclick = function()
			{
				box1x.style.display = "none";
			}
			//-------------------
			$('#btn5x')
				.on(
					"click",
					function()
					{
						var values1 = $('#inp1').val()
						$
							.ajax(
							{
								type: "POST",
								data: $('#form5x').serialize(),
								url: "/meishimeike/merchant/addClassifyList",
								async: false,
								success: function(d)
								{
									var jso = JSON.parse(d);
									if(jso.data == true)
									{
										history.go(0);
										box1x.style.display = "none";
									}else{
										alert(jso.data)
									}

								},
								error: function(a, b)
								{
									
								}
							});
					})
					
					$(".navbar-toggle").click(function(){
		$("#example-navbar-collapse").toggleClass('in');
	})
		</script>
</body>

</html>