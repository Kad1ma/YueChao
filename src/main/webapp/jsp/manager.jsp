<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="easyui/jquery.min.js"></script>
    <script src="easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript">
    		function fun(){
    			var selected = $("#mthd option:selected").val();
    			if(selected == "sale"){
    				$("#rent").hide();
    				$("#sale").show();
    			}else{
    				$("#sale").hide();
    				$("#rent").show();
    			}
    		}
    </script>
  </head>
  
 <body>
    		<form action="manager.do" method="post">
    			<table align="center">
    					<tr>
    						<td>
    							 请选择房屋划分：<select id="mthd" onchange="fun()" name="method">
                    								<option value="rent" selected="selected">租楼</option>
								                    <option value="sale">卖楼</option>
								               </select>
    						</td>
    					</tr>
    					
					    <tr>
					    	<td>
					    		<div id="sale" style="display: none">
					    			房&nbsp;产&nbsp;号:<input type="text" name="id">
					    		</div>
					    	</td>
					    </tr>
					    
					    <tr>
					    	<td>
					    		<div id="rent">
					    			房屋编号:<input type="text" name="id1">
					    		</div>
					    	</td>
					    </tr>
						
						<tr>
							<td align="right">
								<div>
									<input type="submit" value="删除">
								</div>
							</td>
						</tr>					    
    			</table>
    		</form>
  </body>
</html>
