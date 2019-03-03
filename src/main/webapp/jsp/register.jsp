<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
    
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
    <script src="easyui/locale/easyui-lang-zh_CN.js"></script>
    <link rel="stylesheet" type="text/css" href="easyui/themes/icon.css" />
    <link rel="stylesheet" type="text/css" href="easyui/themes/black/easyui.css" />
    
	<style>
        body {
            background-image: url("img/bg02.jpg");
            background-size: cover;
        }
    </style>
	
	<script type="text/javascript">
	
		$(function(){
			$("#div_register").dialog({
				title:"用户注册",
				iconCls: "icon-large-chart",
				collapsed: false,
				closable: false,
				draggable: false,
				buttons:"#div_btn"
			}).dialog("center");
			
			$("#input_username").textbox({
				type:"text",
				prompt:"请输入用户名",
				iconCls:"icon-man",
				iconAlign:"right",
				required: true,
				missingMessage: "请输入用户名！" 
			});
			
			$("#input_tel").textbox({
				type:"text",
				prompt:"请输入手机号",
				iconCls:"icon-iphone",
				iconAlign:"right",
				required: true,
				missingMessage: "请输入手机号！" 
			});
			
			$("#input_password").textbox({
				type:"password",
				prompt:"请输入密码",
				iconCls:"icon-lock",
				iconAlign: "right",
				required: true,
				missingMessage: "请输入密码"
			});
 		});
	</script>
		
	<script type="text/javascript">
		$(function (){
			$("#btn_register").click(function () {
				//入参合法性校验
				var userName = $.trim($("#input_username").val());
				var userPassword = $.trim($("#input_password").val());
				var userTel = $.trim($("#input_tel").val());
				//用户名校验：只能输入4-20个以字母开头、可带数字、“_”、“.”的字串  
			    var name = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){3,19}$/;
				//校验密码：只能输入6-12个字母、数字、下划线 
				var patrn = /^[a-zA-Z]\w{5,17}$/;
				//验证130-139,150-159,180-189号码段的手机号码 */
    			var tel = /^1[34578]\d{9}$/; 
    			$("#msg").text("");
				if(!name.test(userName)){
					msg = "用户名只能输入4-20个以字母开头、可带数字、“_”、“.”的字串！";
					$("#msg").text(msg);
					return;
				} else if(!patrn.test(userPassword)){
					msg = "只能输入6-12个字母、数字、下划线 ！";
					$("#msg").text(msg);
					return;
				} else if(!tel.test(userTel)){
					msg = "手机号格式不正确";
					$("#msg").text(msg);
					return;
				}
				
				$.ajax({
					type : "post",
					url : 'jsp/register.do',
					data : $("#form_register").serializeArray(),
					contentType : "application/x-www-form-urlencoded",
					dataType : "json",
					success : function(data){
						if(data.result == "success"){
							window.location.href = "<%=basePath%>jsp/registersuccess.jsp?" + data.parame;
						}else{
							$("#msg").text(data.msg);
						}
					}
				});
			});
		});
	</script>
  </head>
  
  <body>
    	<div id="div_register" style="width: 450px;height: 350px">

			<div id="div_input" style="text-align: left;padding-left: 93px;padding-top:73px;">

				<form id="form_register" method="post"> 
					<div style="padding-bottom: 20px">
						用户名:<input id="input_username" name="userName">
	            	</div>
	 				<div style="padding-bottom: 20px">
						密&nbsp;&nbsp;&nbsp;码:<input id="input_password" name="userPassword">
					</div>
					<div style="padding-bottom: 20px">	
						手机号:<input id="input_tel" name="userTel">
					</div>
					<div>
						<span id="msg" style="color: red;font-size: 15px;"></span>
					</div>
				</form>
			</div>

			<div id="div_btn">
				 <button onclick="window.location.href='jsp/login.jsp'">登录</button>
				 <button id="btn_register">注册</button>
			</div> 
		</div>
  </body>
</html>
