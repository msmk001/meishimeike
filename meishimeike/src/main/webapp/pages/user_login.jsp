
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes" />
<title>用户登录</title>

<script type="text/javascript" src="../js/jquery-1.83.0.js"></script>

<!-- <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script> -->
<link href="css/user_login.css" rel="stylesheet" type="text/css" />

</head>
<!--<%
// <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
//	String path = request.getContextPath();
//	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
//			+ path + "/";
//	request.setAttribute("basePath", basePath);
//%>-->
<body>

	<div id="log_a1">
		<div id="log_a2">
			<img id="log_a2_img" src="../img/02.png" />
		</div>
		<div id="log_a3">
			<a href="#" id="a1" class="log_a2_a1">登录</a> 
			<a href="#" id="a2" class="log_a2_a2">注册</a>
			<div></div>

		</div>
		<form action="${basePath}/pc/user_login.jsp" onsubmit="return checks1(this)" method="post" id="form2">
			<div class="form-div1" id="a3">
				<div>
					<input autocomplete="off" type="number" name="phone" class="inp deal" placeholder="请输入手机号" />
				</div>
				<div>
					<input autocomplete="off" type="password" name="pwd" class="inp" placeholder="请输入密码" />
				</div>
				<div class="form-div2">
					<input autocomplete="off" id="form-div2-input" type="text" class="inp" name="ck" />
					<img class="form-div2-img" width="80" height="40px" onclick="ck1(this)" src="../img/03.png" />
				</div>
				<div>
					<p class="xieyi">
						<span><input class="chd" type="checkbox" checked="checked"></span> 我同意
						<a href="#">《用户服务协议》</a>
					</p>
				</div>
				<div>
					<input type="submit" class="btn1" value="注册">
				</div>
				<div class="div-t2"  id="t2"></div>
			</div>
		</form>

		<form action="${basePath}/pc/index.jsp" onsubmit="return checks()"
			method="post" id="form1">
			<div class="div-a4"  id="a4">
				<div>
					<input autocomplete="off" id="div-a4-input" type="text" class="inp" name="phone" placeholder="请输入手机号" />
				</div>
				<div>
					<input autocomplete="off" type="password" class="inp" name="pass" placeholder="请输入密码" />
				</div>
				<div>
					<p class="xieyi">
						<span><input class="chd" type="checkbox" checked="checked"></span> 我同意
						<a href="#">《用户服务协议》</a>
					</p>
				</div>
				<div>
					<input type="submit" class="btn1" value="登录" >
				</div>
				<div class="div-div-t1" id="t1"></div>
			</div>
		</form>
	</div>
	<!-- ----------------------------- -->
	<div id="my_bottom">
		<div class="my_bottom_div1" >
			所有方 ：三联信息工程系14班</div>
		<div class="my_bottom_div2">
			<a class="my_bottom_div2_a"  href="http://www.miitbeian.gov.cn/">渝ICP备18005766号</a>
		</div>
	</div>
	<script>
			var a1 = document.getElementById("a1")
			var a2 = document.getElementById("a2")
			var a3 = document.getElementById("a3")
			var a4 = document.getElementById("a4")
			a1.onclick = function()
			{
				a3.style.display = "none";
				a4.style.display = "block";
				a1.style.color="blue";
				a2.style.color="#848181";
			}
			a2.onclick = function()
			{
				a3.style.display = "block";
				a4.style.display = "none";
				a2.style.color="blue";
				a1.style.color="#848181";
			}
			//***************************************************
			function ck1(img)
			{
				img.src = img.src + "?" + new Date().getTime();
			}
			//***************************************************
			$(".inp").focus(function inpt () {
				$(this).css({"border-color":"rgba(0, 3, 214, 0.5)"})
			})
			$(".inp").blur(function inpt () {
				$(this).css({"border-color":"rgba(0,0,0,0.2)"})
			})
			//***************************************************
			$("#a1").click(function a1_cl () {
				$("#log_a3>div").animate({left:"23px"});
			})
			$("#a2").click(function a1_cl2 () {
				$("#log_a3>div").animate({left:"147px"});
			})
			//***************************************************
			function checks()
			{
				var t1 = $("#t1");
				var b = false;
				$.ajax(
				{
					type: "POST",
					data: $('#form1').serialize(),
					url: "",
					async: false,
					success: function(d)
					{

						var jso = JSON.parse(d);
						if(jso.data == true)
						{
							b = true;
						}
						else
						{
							t1.text(jso.data);
							b = false;
						}
					},
					error: function(a, b)
					{
						alert(b)
					}
				});

				return b;
			}

			function checks1(from2)
			{
				var t1 = $("#t2");
				var b = false;
				var phone = $('input[name=phone]').val()
				var pwd = $('input[name=pwd]').val()
				var ck = $('input[name=ck]').val()
				var reg = /^((13[0-9])|(14[5,7,9])|(15[^4])|(18[0-9])|(17[0,1,3,5,6,7,8]))\d{8}$/;
				var reg2 = /.{6,15}/
				var reg3 = /[a-zA-Z1-9]{4}/
				if(!reg.test(phone))
				{
					t1.text("手机号格式不正确")
					return false;
				}
				if(!reg2.test(pwd))
				{
					t1.text("密码格式不正确")
					return false;
				}
				if(!reg3.test(ck))
				{
					t1.text("验证码格式不正确")
					return false;
				}

				$.ajax(
				{
					type: "POST",
					data: $('#form2').serialize(),
					url: "",
				async : false,
				success : function(d) {

					var jso = JSON.parse(d);
					if (jso.data == true) {

						b = true;
					} else {
						t1.text(jso.data);
						b = false;
					}
				},
				error : function(a, b) {
					alert(b)
				}
			});

			return b;
		}
	</script>
</body>

</html>