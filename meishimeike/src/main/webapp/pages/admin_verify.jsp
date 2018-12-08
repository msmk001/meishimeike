<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP网站</title>
<link href="css/app.min.css" rel="stylesheet" type="text/css" />

<link  href="/meishimeike/pages/img/myimg.ico"  rel="SHORTCUT ICON" />

<link href="css/bootstrap.hupeng.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=h4HCnb8GEj76TRvKMTgyGjWhtsnRqm36"></script>
<link href="css/icons.min.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.content {
	width: 100%;
	height: auto;
	padding-top: 7%;
}

.content_div {
	margin: 0 auto;
	width: 800px;
	height: auto;
	display: block;
}

.box {
	width: 100%;
	height: auto;
}

.box>div {
	width: 250px;
	border: 1px solid #ccc;
	float: left;
	height: 210px;
	margin: 1%;
	text-align: center;
}

.box img {
	width: 240px;
	height: 180px;
}

.btn {
	width: 100%;
	margin: 0 auto;
}

.sub-btn, .verify-btn {
	paading-left: 10px;
	width: 180px;
	line-height: 35px;
	background-color: #ccc;
	color: white;
	border: none;
	display: inline-block;
	cursor: pointer;
}

.sub-btn {
	background-color: #0099CC;
}

.verify-btn {
	text-align: center;
	line-height: 35px;
	height: 35px;
	border: 1px solid #ccc;
	text-decoration: none;
	color: black;
}

#box {
	width: 800px;
	height: 500px;
}
</style>
</head>
<body>
	<header id="topnav">
		<nav class="navbar-custom">
			<div class="container-fluid">
				<ul class="list-unstyled topbar-right-menu float-right mb-0">
					<li class="dropdown notification-list"><a
						class="nav-link dropdown-toggle nav-user mr-0"
						data-toggle="dropdown" href="#" role="button"
						aria-haspopup="false" aria-expanded="false"> <img
							src="img/users/admin.jpg" alt="user-image" class="rounded-circle">
							<small class="pro-user-name ml-1"> Admin </small>
					</a>
						<div
							class="dropdown-menu dropdown-menu-right dropdown-menu-animated profile-dropdown ">
							<a href="javascript:void(0);" class="dropdown-item notify-item">
								<i class="fe-log-out"></i> <span>退出</span>
							</a>

						</div></li>
				</ul>
				<ul class="list-inline menu-left mb-0">
					<li class="float-left"><a href="/meishimeike" class="logo">
							<span class="logo-lg"> <img src="img/logo2.png" alt=""
								height="65">
						</span> <span class="logo-sm"> <img src="img/logo2.png" alt=""
								height="55">
						</span>
					</a></li>
				</ul>
			</div>
		</nav>
	</header>
	<section class="content">
		<div class="content_div">
			<form action="" method="post">
				<div>
					<h5>联系人姓名 : ${merchantData.info.name}</h5>
				</div>
				<div>
					<h5>店名 : ${merchantData.info.mName}</h5>
				</div>
				<div>
					<h5>手机号码 : ${merchantData.info.phone}</h5>
				</div>
				<div>
					<h5>商店类型 : ${merchantData.info.mType}</h5>
				</div>
				<div id="box">
					<h5>商家地址 : ${merchantData.info.mLng} |
						${merchantData.info.mLat}</h5>
				</div>
				<div class="box">
					<div>
						<span>商店门头</span> <img src="img/${merchantData.info.mAppearance}" />
					</div>
					<div>
						<span>店内照</span> <img src="img/${merchantData.info.mImgIndoor}" />
					</div>
					<div>
						<span>身份证正面</span> <img src="img/${merchantData.info.mImgIdCar}" />
					</div>
					<div>
						<span>Logo</span> <img src="img/${merchantData.info.mLogo}" />
					</div>
					<div>
						<span>营业执照</span> <img src="img/${merchantData.info.mImgLicense}" />
					</div>
					<div>
						<span>餐饮服务许可证</span> <img
							src="img/${merchantData.info.mPermission}" />
					</div>
				</div>
				<div class="btn">
					<a class="sub-btn"
						href="/meishimeike/admin/pass_merchant?id=${merchantData.id}">验证通过</a>
					<a class="verify-btn" href="">验证不通过,请返回！</a>
				</div>
			</form>
		</div>
	</section>
</body>
<script>
	function G(id) {
		return document.getElementById(id);
	}

	var map = new BMap.Map("box");
	var Point1 = null;

	var mlng =${merchantData.info.mLng}, mlat = ${merchantData.info.mLat};

	Point1 = new BMap.Point(mlng, mlat);

	map.centerAndZoom(Point1, 18);

	 var marker = new BMap.Marker(Point1);  // 创建标注
	 map.addOverlay(marker);               // 将标注添加到地图中
	 marker.setAnimation(BMAP_ANIMATION_BOUNCE);  

	map.addEventListener("click", showInfo);
	map.enableScrollWheelZoom(true);
</script>
<script src="js/vendor.min.js"></script>
</html>