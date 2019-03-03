<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<!-- End of Page title -->
		
		<!-- Libraries -->
		<link type="text/css" href="AdminCSS/CSS/login.css" rel="stylesheet" />	
		<link type="text/css" href="AdminCSS/CSS/jquery-ui-1.7.2.custom.html" rel="stylesheet" />	
		
		<script type="text/javascript" src="AdminCSS/JS/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="AdminCSS/JS/easyTooltip.js"></script>
		<script type="text/javascript" src="AdminCSS/JS/jquery-ui-1.7.2.custom.min.js"></script>
		<!-- End of Libraries -->	
	</head>

	<body>
	<div id="container">
		<div class="logo">
			<a href="#"><img src="AdminCSS/img/title2.png" alt="" /></a>
		</div>
		<div id="box">
			<form action="adminLogin.do" method="get">
			<p class="main">
				<label>Username: </label>
				<input name="username"  placeholder="username" /> 
				<label>Password: </label>
				<input type="password" name="password" placeholder="******"">	
			</p>

			<p class="space">
				<!--  <span><input type="checkbox" name="remember" value="remember"  />Remember me</span>-->
				<input type="submit" value="Login" class="login" />
			</p>
			
			<p >
			<input type="hidden" value="AdminLogin" name="method" >
			</p>
			</form>
		</div>
	</div>

	</body>
</html>
