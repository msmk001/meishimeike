<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>美食美客后台管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="<%=request.getContextPath()%>/pages/css/bootstrap.hupeng.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/pages/css/icons.min.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/pages/css/app.min.css" rel="stylesheet" type="text/css" />
<script src="<%=request.getContextPath()%>/pages/js/echarts.js"></script>

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
							src="<%=request.getContextPath()%>/pages/img/users/admin.jpg"
							alt="user-image" class="rounded-circle"> <small
							class="pro-user-name ml-1"> Admin </small>
					</a>
						<div
							class="dropdown-menu dropdown-menu-right dropdown-menu-animated profile-dropdown ">
							<a href="javascript:void(0);" class="dropdown-item notify-item">
								<i class="fe-log-out"></i> <span>退出</span>
							</a>

						</div></li>
				</ul>
				<ul class="list-inline menu-left mb-0">
					<li class="float-left"><a href="<%=request.getContextPath() %>/index.jsp" class="logo">
							<span class="logo-lg"> <img
								src="<%=request.getContextPath()%>/pages/img/logo2.png" alt=""
								height="65">
						</span> <span class="logo-sm"> <img
								src="<%=request.getContextPath()%>/pages/img/logo2.png"
								alt="" height="55">
						</span>
					</a></li>
				</ul>
			</div>
		</nav>
	</header>
	<div class="wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="page-title-box">
						<div class="page-title-right">
							<ol class="breadcrumb m-0">
								<li class="breadcrumb-item"><a href="#">美食美客</a></li>
							</ol>
						</div>
						<h4 class="page-title">数据</h4>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-3 col-lg-6">
					<div class="card widget-flat">
						<div class="card-body p-0">
							<div class="p-3 pb-0">
								<div class="float-right">
									<i class="mdi mdi-cart text-primary widget-icon"></i>
								</div>
								<h5 class="text-muted font-weight-normal mt-0">商品总数</h5>
								<h3 class="mt-2">3,543</h3>
							</div>
							<div id="sparkline1"></div>
						</div>
					</div>
				</div>

				<div class="col-xl-3 col-lg-6">
					<div class="card widget-flat">
						<div class="card-body p-0">
							<div class="p-3 pb-0">
								<div class="float-right">
									<i class="mdi mdi-currency-usd text-danger widget-icon"></i>
								</div>
								<h5 class="text-muted font-weight-normal mt-0">销售总数</h5>
								<h3 class="mt-2">21,287</h3>
							</div>
							<div id="sparkline2"></div>
						</div>
					</div>
				</div>

				<div class="col-xl-3 col-lg-6">
					<div class="card widget-flat">
						<div class="card-body p-0">
							<div class="p-3 pb-0">
								<div class="float-right">
									<i class="mdi mdi-account-multiple text-primary widget-icon"></i>
								</div>
								<h5 class="text-muted font-weight-normal mt-0">商家总数</h5>
								<h3 class="mt-2">5,387</h3>
							</div>
							<div id="sparkline3"></div>
						</div>
					</div>
				</div>

				<div class="col-xl-3 col-lg-6">
					<div class="card widget-flat">
						<div class="card-body p-0">
							<div class="p-3 pb-0">
								<div class="float-right">
									<i class="mdi mdi-eye-outline text-danger widget-icon"></i>
								</div>
								<h5 class="text-muted font-weight-normal mt-0">访问量</h5>
								<h3 class="mt-2">74,315</h3>
							</div>
							<div id="sparkline4"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-8">
					<div class="5">
						<div class="card-body">
							<div id="main" style="height: 400px; width: 1150px;" class="mt-4"></div>
							<script type="text/javascript">
								var myChart = echarts.init(document
										.getElementById('main'));
								var option = {
									title : {
										text : '美食美客',
									},
									toolbox : {
										show : true,
										feature : {
											magicType : {
												show : true,
												type : [ 'line', 'bar' ]
											},
											restore : {
												show : true
											},
											saveAsImage : {
												show : true
											}
										}
									},
									xAxis : [ {
										type : 'category',
										data : [ '1月', '2月', '3月', '4月', '5月',
												'6月', '7月', '8月', '9月', '10月',
												'11月', '12月' ]
									} ],
									yAxis : [ {
										type : 'value'
									} ],
									series : [
											{
												name : '蒸发量',
												type : 'bar',
												data : [ 2.0, 4.9, 7.0, 23.2,
														25.6, 76.7, 135.6,
														162.2, 32.6, 20.0, 6.4,
														3.3 ],

											}, ]
								};
								myChart.setOption(option);
							</script>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<h4 class="header-title">客户列表</h4>

							<div class="table-responsive mt-3">
								<table class="table table-hover table-centered mb-0">
									<thead>
										<tr>
											<th>基本信息</th>
											<th>手机号</th>
											<th>地址</th>
											<th>注册时间</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><img
												src="<%=request.getContextPath()%>/pages/img/u=494529471,4145676902&fm=26&gp=0.jpg"
												alt="contact-img" height="36" title="contact-img"
												class="rounded-circle float-left mr-2" />
												<p class="mb-0 font-weight-bold">
													<a href="<%=request.getContextPath()%>/verify.jsp">哈狗</a>
												</p> <span class="font-13">3494490@qq.com</span></td>

											<td>110120119</td>

											<td>重庆</td>

											<td>2018/11/29</td>

											<td>
												<div class="btn-group dropdown">
													<a href="javascript: void(0);"
														class="dropdown-toggle arrow-none btn btn-light btn-sm"
														data-toggle="dropdown" aria-expanded="false"><i
														class="mdi mdi-dots-horizontal"></i></a>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#"><i
															class="mdi mdi-pencil mr-1 text-muted"></i>编辑</a> <a
															class="dropdown-item" href="#"><i
															class="mdi mdi-delete mr-1 text-muted"></i>删除</a> <a
															class="dropdown-item" href="#"><i
															class="mdi mdi-email mr-1 text-muted"></i>发送邮件</a>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">Mosheng Admin &copy; 2018 - tecms.net</div>
				<div class="col-md-6">
					<div class="text-md-right footer-links d-none d-sm-block">
						<a href="#">关于我们</a> <a href="#">帮助</a> <a href="#">联系我们</a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<script src="<%=request.getContextPath()%>/pages/js/vendor.min.js"></script>
	<script src="<%=request.getContextPath()%>/pages/js/Chart.bundle.js"></script>
	<script src="<%=request.getContextPath()%>/pages/js/jquery.sparkline.min.js"></script>

</body>
</html>