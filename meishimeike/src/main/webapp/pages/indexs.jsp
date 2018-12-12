<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link  href="/meishimeike/pages/img/myimg.ico"  rel="SHORTCUT ICON" />
<title>美食美客</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1,user-scalable=0">
<link rel="stylesheet" href="/meishimeike/pages/css/indexs.css" />

<link rel="stylesheet" href="/meishimeike/pages/css/bootstrap.css" />




<style type="text/css">
body{
	min-width: 1300px;
}
.navbar-default .navbar-toggle .icon-bar {
    background-color: #fff;
}

.navbar-brand {
	/* height: 65px; */
	padding: 0;
}

.navbar-default {
	box-sizing: border-box;
	background-color: rgba(68, 56, 130, 0.62);
}


.navbar-default .navbar-toggle:focus, .navbar-default .navbar-toggle:hover {
    background-color: inherit;
}

::-webkit-scrollbar {
	display: none;
}
.navbar-default .navbar-nav > li > a:focus, .navbar-default .navbar-nav > li > a:hover {
    color: #FFFFFF;
}

.navbar-default .navbar-nav > .active > a, .navbar-default .navbar-nav > .active > a:focus, .navbar-default .navbar-nav > .active > a:hover {
    color: #FFFFFF !important;
    background-color: #82adbd;
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

.navbar {
	position: fixed;
	width: 100%;
	border: 1px solid transparent;
	margin-bottom: 20px;
	z-index: 2;
	/* background-image: linear-gradient(-90deg, #FFF -20%, #FFF 100%); */
}

.loader--spinningDisc,#spBox{
	display: none;
}
#spBox{
	height: 50px;
}
.loader--spinningDisc {
	
 width:50px !important;
  height:50px !important;
  border: solid 0.7em #9b59b6;
  border-right-color: transparent;
  border-left-color: transparent;
  padding: 0.5em;
  border-radius: 50%;
  background: #8b83b1;
  background-clip: content-box;
  animation: spinDisc 0.8s linear infinite;
  -moz-animation: spinDisc 0.8s linear infinite;
	/* Safari 和 Chrome: */
	-webkit-animation: spinDisc 0.8s linear infinite;
	/* Opera: */
	-o-animation: spinDisc 0.8s linear infinite;
  
  box-sizing: content-box;
}
@keyframes spinDisc {
  50% {
   /*  border-top-color: #3498db;
    border-bottom-color: #3498db;
    background-color: #2ecc71; */
  }
  100% {
  	 transform: rotate(1turn);
  	-webkit-transform: rotate(1turn);
    -moz-transform: rotate(1turn);
    -ms-transform:  rotate(1turn);
    -o-transform: rotate(1turn);
  }
}
@-moz-keyframes spinDisc /* Firefox */
{
50% {
   /*  border-top-color: #3498db;
    border-bottom-color: #3498db;
    background-color: #2ecc71; */
  }
  100% {
  	 transform: rotate(1turn);
  	-webkit-transform: rotate(1turn);
    -moz-transform: rotate(1turn);
    -ms-transform:  rotate(1turn);
    -o-transform: rotate(1turn);
  }
}

@-webkit-keyframes spinDisc /* Safari 和 Chrome */
{
50% {
   /*  border-top-color: #3498db;
    border-bottom-color: #3498db;
    background-color: #2ecc71; */
  }
  100% {
  	 transform: rotate(1turn);
  	-webkit-transform: rotate(1turn);
    -moz-transform: rotate(1turn);
    -ms-transform:  rotate(1turn);
    -o-transform: rotate(1turn);
  }
}

@-o-keyframes spinDisc /* Opera */
{
50% {
  /*   border-top-color: #3498db;
    border-bottom-color: #3498db;
    background-color: #2ecc71; */
  }
  100% {
  	 transform: rotate(1turn);
  	-webkit-transform: rotate(1turn);
    -moz-transform: rotate(1turn);
    -ms-transform:  rotate(1turn);
    -o-transform: rotate(1turn);
  }
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
						src="/meishimeike/pages/img/log4j1.png" /></a>
				</div>
				<div class="collapse navbar-collapse" id="example-navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">首页</a></li>
						<li><a href="#">我的客服</a></li>
						
						<li><a href="/meishimeike/order/open_user_order">我的订单</a></li>
						
						<li><a href="/meishimeike/pages/merchant_login.html">入住加盟</a></li>
						<li><c:if test="${user==null}">
								<a href="/meishimeike/pages/user_login.html">登录|注册</a>
							</c:if> <c:if test="${user!=null}">
								<a href="/meishimeike/pages/userInfo.html">${userName}</a>
							</c:if></li>
						<c:if test="${user!=null}">
							<li><a
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
		<div id="bgBox"></div>
	</header>

	<div class="cursor h_red ui_hide" id="on_top" title="返回顶部">
		<img alt="" src="/meishimeike/pages/img/huojian.png"  width="120%" height="100%"/>
	</div>

	<section>
		<nav>
			<div id="section-div">
				<div id="section-div-1">当前位置 : <span id="siteText">红旗河沟</span></div>
				<div id="section-div-2"></div>
				<div id="section-div-3">
					<input id="section-input" maxlength="10"  type="text" placeholder="搜索商家" />
				</div>
			</div>
		</nav>

		<section>
			<p class="clearp">
			<div id="imgBox">
				<img id="img01" src="/meishimeike/pages/img/bg1.jpeg" />
			</div>
		</section>

		<nav id="nav02">
			<div id="nav_2">
				<span id="fen">全部分类 |</span><span id="allBtn"  class="nav2-a">全部</span> <a class="nav2-a">美食</a> <a
					class="nav2-a">快餐</a> <a class="nav2-a">小吃</a> <a class="nav2-a">甜品</a>
				<a class="nav2-a">早餐</a> <a class="nav2-a">午餐</a> <a class="nav2-a">下午茶</a>
				<a class="nav2-a">晚餐</a>
			</div>
		</nav>
		<div id="nav_3">
		
			<div id="spBox"></div>
			<div class='loader loader--spinningDisc'></div>
			
			<c:forEach var="i" items="${merchantIndexData}">
				<div class="main_box float_left" onclick="location.href='/meishimeike/merchant/openInfo?id=${i.id}'">
					<div class="float_left">
						<img src="/meishimeike/pages/img/${i.info.mLogo}" width="75" height="75">
					</div>
					<div class="float_left caipinBox">
						<p class="caipinBoxp1">${i.info.mName}</p>
						<p class="caipinBoxp2">★★★★★</p>
						<p class="caipinBoxp3">配送费￥2</p>
					</div>
					<div class="s_time">33+分钟</div>
					<input type="hidden" class="hide" value="${i.info.mType}" />
				</div>
			</c:forEach>

			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/江湖爆炒.jpeg" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">江湖爆炒</p>
					<p class="caipinBoxp2">★★★★★</p>
					<p class="caipinBoxp3">配送费￥5</p>
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="美食" />
			</div>

			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/愉快.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">愉筷（较场口店）</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5.5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="美食" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/乡村基.jpg" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">乡村基（上清寺店）</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">35+分钟</div>
				<input type="hidden" class="hide" value="快餐便当" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/阿妈.jpeg" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">阿妈味道特色木桶饭</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/jintangbao.jpeg" width="75"
						height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">金汤包</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/piaoxiang.jpeg" width="75"
						height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">飘香木桶饭</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/munanniu.png" width="75"
						height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">牧男牛井咖喱焗饭</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="快餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/zuoyushousi.png" width="75"
						height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">佐鱼寿司</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="甜品" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/御品贡茶.jpeg" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">御品贡茶</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="下午茶" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/隆江猪脚饭.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">隆江猪脚饭</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="快餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/黄焖鸡米饭.jpeg" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">黄焖鸡米饭</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="午餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/洪湖小碗菜.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">洪湖小碗菜</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="午餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/万州土碗菜.jpeg" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">万州土碗菜</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="小吃" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/心德小笼包子.jpeg" width="75"
						height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">心德小笼包子</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="小吃" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/紫燕百味鸡.jpg" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">紫燕百味鸡</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="早餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/毛大臣龙虾饭.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">毛大臣龙虾饭</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="午餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/传奇.jpeg" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">传奇抄手</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="晚餐" />
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
				<input type="hidden" class="hide" value="晚餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/广东.png" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">广东旺蟹报贩</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="晚餐" />
			</div>
			<div class="main_box float_left">
				<div class="float_left">
					<img src="/meishimeike/pages/img/华莱士.jpeg" width="75" height="75">
				</div>
				<div class="float_left caipinBox">
					<p class="caipinBoxp1">华莱士（上清寺店）</p>
					<p class="caipinBoxp2">★★★★★
					<p class="caipinBoxp3">配送费￥5
				</div>
				<div class="s_time">33+分钟</div>
				<input type="hidden" class="hide" value="快餐" />
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
				<img src="/meishimeike/pages/img/erwei.png"  width="150"
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
	<div id="baidu" style="display: none;"></div>
	

</body>
</html>
<script type="text/javascript" src="/meishimeike/pages/js/jquery-2.1.0.js"></script>
<script type="text/javascript" src="/meishimeike/pages/js/tianlinxin_index.js"></script>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=h4HCnb8GEj76TRvKMTgyGjWhtsnRqm36"></script>
<script>


function G(id) {
	return document.getElementById(id);
}


var map = new BMap.Map("baidu");



var mlng=106.53279,mlat=29.59129;

var Point1 =new BMap.Point(mlng,mlat);
map.centerAndZoom(Point1, 18);

map.enableScrollWheelZoom(true); 


var geoc = new BMap.Geocoder();

//定位
var geolocation = new BMap.Geolocation();

geolocation.getCurrentPosition(function(r){
	
	var pt = r.point;
    geoc.getLocation(pt, function(rs){
        //addressComponents对象可以获取到详细的地址信息
        var addComp = rs.addressComponents;
        var site = "";
        if(addComp.streetNumber==""){
        	 site = addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street;
        }
        if(addComp.street==""){
        	site = addComp.province + ", " + addComp.city + ", " + addComp.district ;
        }
        if(site.trim()==""){
        	 $('#siteText').text("红旗河沟")
        }else{
        	 $('#siteText').text(site)
        }
       
    }); 
	
	if(this.getStatus() == BMAP_STATUS_SUCCESS){
		mlng=r.point.lng;
		mlat=r.point.lat;
		var mk = new BMap.Marker(r.point);
		mk.setAnimation(BMAP_ANIMATION_BOUNCE);
		map.addOverlay(mk);
		map.panTo(r.point);
		map.setZoom(18);  //设置地图方大级别
	}
	else {
		alert('failed'+this.getStatus());
	}        
},{enableHighAccuracy: true})

</script>