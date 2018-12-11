<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">

<title>夜光杯酒业-添加地址</title>
<link rel="icon" type="image/x-icon" href="<%=request.getContextPath() %>/pages/img/tb.ico">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/pages/css/address.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/pages/css/site.css">
</head>
<body>

	<div class="app-location">
			<h1>请添加一个收货地址</h1>
			<form action="<%=request.getContextPath() %>/sss?command=site" onsubmit="return sub()" method="post">
				<input id="name" type="text" name="name" value="收货人" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '收货人';}" >
				<input id="contacts" type="text" name="contacts" value="收货人联系方式" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '收货人联系方式';}">
				<div id="ganged-box">
<label for="Addr" id="areaLabel" class="address">
	<input type="text" name="site1" id="Addr" readonly placeholder="请选择地区">
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
<script type="text/javascript" src="/meishimeike/pages/js/jquery-2.1.0.js"></script>
                <script type="text/javascript" src="<%=request.getContextPath() %>/pages/js/city.js" ></script>
				<script type="text/javascript">
									$(function(){
		// 地址选择器遮罩层打开与关闭
		$("#areaLabel").click(function(e){
			$("#addressSelectWrapper").show();
			e.stopPropagation();
		});
		$(document).click(function () {
			$("#addressSelectWrapper").hide();
		});
		$("#cancel").click(function () {
			$("#addressSelectWrapper").hide();
		});
		$("#addressSelect").click(function (e) {
			e.stopPropagation();
		});

		initAddress();
	});

	//初始化地址选择
	function initAddress() {
		$("#Addr").cityLinkage({
			containerId: 'addressSelectWrapper',
			getSelectedCode:function(){return $("#Addr").data("code");},
			callback:function(data) {
				$("#Addr").val(data.addr).data("code",data.town.code);
			}
		});
	}
								</script>
				<input type="text" id="site" name="site2" value="收货人精准地址" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '收货人精准地址';}">
				<select name="dhl" class="biaog-2">
									<option value="顺丰快递">顺丰快递</option>
									<option value="东风快递">东风快递</option>
									<option value="邮政快递">邮政快递</option>
									<option value="圆通快递">圆通快递</option>
									<option value="申通快递">申通快递</option>
									<option value="韵达快递">韵达快递</option>
									<option value="中通快递">中通快递</option>
									<option value="汇通快递">汇通快递</option>
								</select>
				<div class="submit"><input type="submit" value="添加" ></div>
			</form>
			<script type="text/javascript">
			function sub() {
				alter("asdasd");
				var name = document.getElementById("name");
				var contacts = document.getElementById("contacts");
				var Addr = document.getElementById("Addr");
				var site = document.getElementById("site");
				var zzz = /^([\u4E00-\u9FA5])*$/;
				var telzz = /^1[3,5,8]\d{9}$/;
				if (zzz.test(name)) {
					name.style.border = "1px green solid";
					if (telzz.test(contacts)) {
						name.style.border = "1px green solid";
							return true;
					} else {
						name.style.border = "1px green red";
						return false;
					}
				} else {
					name.style.border = "1px green red";
					return false;
				}
			}
			</script>
		</div>

</body>
</html>