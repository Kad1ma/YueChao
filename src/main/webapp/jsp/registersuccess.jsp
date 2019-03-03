<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path=request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()+ path + "/"; 
String targetUrl = basePath+request.getParameter("targetUrl") ;
response.setHeader("refresh", "10;url=" + targetUrl);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%-- <base href="<%=basepath%>" /> --%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录成功</title>
		<style type="text/css">
		#d1{
		   height:40px;
		   weight:800px;
		   magin:auto;
		   top:300px;
		   background-color:green;
		}
		#tip,#s2{
		       color:red;
		       font-size:30px; 
		    }
		    a{
		    magin:auto;
		    }
		</style>
		<script type="text/javascript">
			var i = 10 ;
			var Interval = setInterval(function() {
			document.getElementById("s2").innerHTML = i +"";
			i--;
			if (i==0) {
			clearInterval(Interval);
			}
			},1000);
			
		</script>
</head>

<body>
	<h1 align="center">注册成功！！！</h1>

	<div id="d1" align="center">
	<a href="<%= basePath+request.getParameter("targetUrl") %>">立即跳转</a><br/> 
	<span id="s1"></span> 
	<span id="s2">10</span>秒后自动跳转到登录页面
	</div>
</body>
</html>
