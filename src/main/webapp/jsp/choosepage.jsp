<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>请选择…</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table width="100%" border="1px">
        <tr>
                <h1>尊敬的用户:<font color="red">${user.username }</font>您好 欢迎使用乐巢——哈理工租售楼中心yuechao.com</h1>
                <h1>请选择您需要的业务：</h1>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <h2>租楼</h2>
            </td>
        </tr>
        <tr>
            <td align="center">
                <h3><a href="<%=basePath%>jsp/showallrenthouse.jsp"">我是买家</a></h3>
            </td>
            <td align="center">
                <h3><a href="<%=basePath%>jsp/setrenthouseinfo.jsp">我是卖家</a></h3>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <h2>售楼</h2>
            </td>
        </tr>
        <tr>
            <td align="center">
                <h3><a href="<%=basePath%>jsp/showallsalehouse.jsp">我是买家</a></h3>
            </td>
            <td align="center">
                <h3><a href="<%=basePath%>jsp/setsalehouseinfo.jsp"">我是卖家</a></h3>
            </td>
        </tr>
        
        <tr>
        	<td colspan="2" align="right">
        		<h3><a href="<%=basePath%>/jsp/index.jsp" >返回首页</a> </h3>
        	</td>
        </tr>
    </table>
  </body>
</html>
