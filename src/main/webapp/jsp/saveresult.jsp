<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>保存结果</title>
<script src="../easyui/jquery.min.js"></script>
<script type="text/javascript">
			$(function(){
				var isSuccess = "${result}";
				var msg = "${msg}";
				if(isSuccess == "success"){
					$("#msg").text("提交成功！");
				} else {
					$("#msg").text(msg);
				};
				var i = 10;
				var Interval =  setInterval(function (){
					document.getElementById("s2").innerHTML = i + "";
					i--;
					if(i == 0){
						clearInterval(Interval);
						window.location.href = '${targetUrl }';
					}
				},1000);
			});
	</script>
</head>	
<body>
<div align="center" style="padding-top: 150px">
	<span id = "msg" style="padding-top: 60px"></span>
	<div align="center">
        <a href="javascript:window.location.href='${targetUrl }'">立即返回</a>
    </div>
    <div align="center">
        <span id="s2">10</span>秒后自动跳转到首页
    </div>  
</div>
</body>
</html>