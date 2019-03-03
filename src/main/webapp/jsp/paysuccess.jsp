<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setHeader("refresh", "10;url=" + basePath + "jsp/index.html");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>付款成功！</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
			var i = 10;
			var Interval =  setInterval(function (){
				document.getElementById("s2").innerHTML = i + "";
				i--;
				if(i == 0){
					clearInterval(Interval);
					window.location.href = "jsp/index.jsp";
				}
			},1000);
	</script>
  </head>
  
  <body>
  		<div align="center">
  			<img alt="" src="<%= basePath %>img/paysuccess.png">
  		</div><br/>
        <div align="center">
        	<a href="javascript:window.location.href='jsp/index.jsp'">立即返回</a>
        </div>
        <div align="center">
        	<span id="s2">10</span>秒后自动跳转到首页
        </div>  
   </body>
</html>
