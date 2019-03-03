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
	
	
	<!-- Basic -->
		<!-- Import google fonts -->
       <!--<link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css" />  --> 
      <!--   
		Favicon and touch icons
		<link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="assets/ico/apple-touch-icon.png" />
		<link rel="apple-touch-icon" sizes="57x57" href="assets/ico/apple-touch-icon-57x57.png" />
		<link rel="apple-touch-icon" sizes="72x72" href="assets/ico/apple-touch-icon-72x72.png" />
		<link rel="apple-touch-icon" sizes="76x76" href="assets/ico/apple-touch-icon-76x76.png" />
		<link rel="apple-touch-icon" sizes="114x114" href="assets/ico/apple-touch-icon-114x114.png" />
		<link rel="apple-touch-icon" sizes="120x120" href="assets/ico/apple-touch-icon-120x120.png" />
		<link rel="apple-touch-icon" sizes="144x144" href="assets/ico/apple-touch-icon-144x144.png" />
		<link rel="apple-touch-icon" sizes="152x152" href="assets/ico/apple-touch-icon-152x152.png" /> -->
		
	    <!-- start: CSS file-->
		
		<!-- Vendor CSS-->
		<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		<link href="assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
		<link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		
		<!-- Plugins CSS-->		
		
		<!-- Theme CSS -->
		<link href="assets/css/jquery.mmenu.css" rel="stylesheet" />
		
		<!-- Page CSS -->		
		<link href="assets/css/style.css" rel="stylesheet" />
		<link href="assets/css/add-ons.min.css" rel="stylesheet" />
		
		<style>
			footer {
				display: none;
			}
		</style>
		
		<!-- end: CSS file-->	
	    
		
		<!-- Head Libs -->
		<script src="assets/plugins/modernizr/js/modernizr.js"></script>
		
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]-->
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<!-- [endif] -->
		<!-- start: JavaScript-->
		
		
		
		
		<!-- Vendor JS-->				
		<script src="assets/vendor/js/jquery.min.js"></script>
		<script src="assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/vendor/skycons/js/skycons.js"></script>	
		
		<!-- Plugins JS-->
		
		<!-- Theme JS -->		
		<script src="assets/js/jquery.mmenu.min.js"></script>
		<script src="assets/js/core.min.js"></script>
		
		<!-- Pages JS -->
	<!-- 	<script src="assets/js/pages/page-login.js"></script> -->
		

		
		<!-- end: JavaScript-->
		
				
		<script type="text/javascript">
		  
		  $(function () {
			  $("#login_button").click(function () {
			  	debugger;
				//入参合法性校验
				var userName = $.trim($("#user_name").val());
				var userPassword = $.trim($("#user_password").val());
				
				$("#msg").text("");
				if(userName == ""){
					msg = "用户名不能为空";
					$("#msg").text(msg);
					return;
				}
				if(userPassword == ""){
					msg = "密码不能为空";
					$("#msg").text(msg);
					return;
				}
				
				$.ajax({
					url : 'jsp/login.do',
					type : 'post',
					data : {
						userName : userName,
						userPassword : userPassword
					},
					dataType : 'json',
					success : function(data){
						if(data.result == "success"){
							window.location.href = "<%= basePath%>" + data.targetUrl;
						} else{
							$("#msg").text(data.msg);
						}
					}
				});
			});
		})
		
		</script>
		

  </head>
  
  <body>
   <!-- Start: Content -->
   <%
   String user_name="";
   String pass_word="";
   /* Cookie []cookies=request.getCookies();
   for(int i=0;i<cookies.length;i++){
     if("username".equals(cookies[i].getName())){
     user_name=cookies[i].getValue();
     }
     if("password".equals(cookies[i].getName())){
     pass_word=cookies[i].getValue();
     }
   } */
    %>
		<div class="container-fluid content">
			<div class="row">
				<!-- Main Page -->
				<div class="body-login">
					<div class="center-login">
						<div class="panel panel-login">
							<div class="panel-title-login text-right">
								<h2 class="title"><i class="fa fa-user"></i>登 录</h2>
							</div>
							<div class="panel-body">
								<form id="login_form" method="post">
									<div class="form-group">
										<label>用户名</label>
										<div class="input-group input-group-icon">
											<input name="username" id="user_name" type="text" class="form-control bk-noradius" value="<%=user_name%>" />
											<span class="input-group-addon">
												<span class="icon">
													<i class="fa fa-user"></i>
												</span>
											</span>
										</div>
									</div>

									<div class="form-group">
										<label>密      码</label>									
										<div class="input-group input-group-icon">
											<input name="password" type="password" id="user_password" class="form-control bk-noradius" value="<%=pass_word%>"/>
											<span class="input-group-addon">
												<span class="icon">
													<i class="fa fa-lock"></i>
												</span>
											</span>
										</div>
									</div>
									<span id="msg" style="padding-top: 10px;font-size: 15px;color: red"></span>
									<br />
									<div class="row">
										<div class="col-sm-8">
											<div class="checkbox-custom checkbox-default bk-margin-bottom-10">
											</div>
										</div>
										<div class="col-sm-4 text-right">
											<input  type="button" id="login_button" class="btn btn-primary hidden-xs" value="登录"/>
											<input  type="button" class="btn btn-primary hidden-xs" onclick="window.location.href='jsp/register.jsp'" value="注册"/>
										</div>
									</div>
									<br />
									<div class="text-with-hr">
										<!-- <span>or</span> -->
									</div>
									<br />
									<div class="bk-margin-bottom-10 bk-margin-top-10 text-center">
										<!-- <a href="#" class="fa fa-facebook facebook-bg"></a>
										<a href="#" class="fa fa-twitter twitter-bg"></a>
										<a href="#" class="fa fa-linkedin linkedin-bg"></a> -->
									</div><br /> 
									<!-- <p class="text-center">Don't have an account yet? <a href="page-register.html"><small>Register!</small></a> -->
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- End Main Page -->	
		
			</div>
		</div><!--/container-->
		
		
  </body>
</html>
