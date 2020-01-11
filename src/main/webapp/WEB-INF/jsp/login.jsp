<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>肇庆市旅游门票预售系统</title>
<link rel="stylesheet" href="<%=basePath%>/static/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=basePath%>/static/css/bootstrap-grid.min.css">
<link rel="stylesheet"
	href="<%=basePath%>/static/css/bootstrap-reboot.css">
<link rel="stylesheet"
	href="<%=basePath%>/static/css/font-awesome.min.css">
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<style>
@font-face {
	font-family: sy;
	src: url('<%=basePath%>/static/fonts/sy.ttf');
}
</style>
</head>
<body>
	<div
		class="navbar navbar-fixed-top d-flex flex-column flex-md-row align-items-center p-2  px-md-4 mb-3 bg-white border-bottom shadow-sm">
		<h5 class="my-0 mr-md-auto font-weight-normal "
			style="font-family: sy;">肇庆市旅游</h5>
		<nav class="my-2 my-md-0 mr-md-3">
			<a class="p-2 text-dark" href="<%=basePath%>">首页</a> <a
				class="p-2 text-dark" href="#">热门景点</a> <a class="p-2 text-dark"
				href="#">最新景点</a>
		</nav>
		<nav class="my-2 my-md-0 mr-md-3">
			<a class="btn btn-outline-primary px-md-4 "
				href="<%=basePath%>/login"> 登 录 </a> <a
				class="btn btn-outline-dark px-md-4  " href="<%=basePath%>/register">注
				册</a>
		</nav>
	</div>


	<div class="container col-md-8" style="height: 560px;">
		<div class="card">
			<div class="card-header text-center header">
				<h5>游客登录</h5>
			</div>
			<div class="card-body mb-5 text-center ">

				<form action="<%=basePath%>/user/login" method="post">
					<c:if test="${idmsg != null}">
						<span style="color: red;">${idmsg}</span>
					</c:if>
					<div class="input-group col-md-6 mb-3  container">
						<div class="input-group-prepend ">
							<span class="input-group-text"> <ion-icon name="person"></ion-icon>
							</span>
						</div>
						<input type="text" class="form-control " placeholder="身份证号"
							id="usr" name="username">
					</div>
					<c:if test="${pwdmsg != null}">
						<span style="color: red;">${pwdmsg}</span>
					</c:if>
					<div class="input-group col-md-6 mb-3 container">
						<div class="input-group-prepend ">
							<span class="input-group-text"> <ion-icon name="key"></ion-icon>
							</span>
						</div>
						<input type="password" class="form-control" placeholder="用户密码"
							id="usr" name="password">
					</div>
					<c:if test="${codemsg != null}">
						<span style="color: red;">${codemsg}</span>
					</c:if>
					<div class="input-group col-md-6 mb-3 container">
						<div class="input-group-prepend ">
							<img
								src="https://try.gogs.io/captcha/pyb5zJDnk7D34E6.png?reload=1578663065959"
								class="card-img-top" alt="Deencode">
						</div>
					</div>
					<div class="input-group col-md-6 mb-3 container">
						<div class="input-group-prepend ">
							<span class="input-group-text"> <ion-icon name="create"></ion-icon>
							</span>
						</div>
						<input type="text" class="form-control" placeholder="验证码" id="usr"
							name="captcha">
					</div>

					<button type="submit" class="btn btn-primary col-md-3">登 录</button>
					<a href="<%=basePath%>/register" style="text-decoration: none">没有账号？去注册！</a>
				</form>

			</div>
		</div>
	</div>
	<hr>
	<footer class="footer navbar-fixed-bottom">
		<div class="container">
			<p>© Company 2017-2019</p>
		</div>
	</footer>

	<script src="<%=basePath%>/static/js/jquery.min.js"></script>
	<script src="<%=basePath%>/static/js/bootstrap.bundle.min.js"></script>
	<script src="<%=basePath%>/static/js/bootstrap.min.js"></script>
</body>
</html>