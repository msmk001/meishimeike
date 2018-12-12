<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>夜光杯酒业-添加地址</title>
<link rel="icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/pages/img/tb.ico">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/pages/css/address.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/pages/css/site.css">
</head>
<body>

	<div class="app-location">
		<h1>请添加一个收货地址</h1>
		<form action="<%=request.getContextPath()%>/sss?command=site"
			onsubmit="return sub()" method="post">
			<input id="name" type="text" name="name" value="收货人"
				onFocus="this.value = '';"
				onBlur="if (this.value == '') {this.value = '收货人';}"> <input
				id="contacts" type="text" name="contacts" value="收货人联系方式"
				onFocus="this.value = '';"
				onBlur="if (this.value == '') {this.value = '收货人手机';}">
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
			<script type="text/javascript"
				src="/meishimeike/pages/js/jquery-2.1.0.js"></script>
			<script type="text/javascript"
				src="<%=request.getContextPath()%>/pages/js/city.js"></script>

			<input type="text" id="site" name="site2" value="收货人精准地址"
				onFocus="this.value = '';"
				onBlur="if (this.value == '') {this.value = '收货人精准地址';}">

			<div class="submit">
				<input type="submit" value="添加">
			</div>
		</form>

	</div>

</body>
</html>