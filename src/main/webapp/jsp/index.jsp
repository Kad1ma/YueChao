<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>乐巢</title>

<!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../css/swiper.min.css">
<!-- 自定义样式 -->
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/index.css">

<script src="../js/rem.js"></script>
</head>
<body>
	<nav class="navbar navbar-fixed-top">
		<div class="navbar-wrap">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><img class="logo"
					src="../img/logo.png" alt=""></a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" class="active">首页</a></li>
					<li><a href="jsp/login.jsp">登录</a></li>
					<li><a href="jsp/register.jsp">注册</a></li>
					<li><a href="#">关于我们</a></li>
					<li class="advice">
						<div class="border"></div> <a href="#"><img
							src="../img/icon_advice.png" alt="">咨询</a>
					</li>

				</ul>
			</div>
			<!--/.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="../img/banner1.jpg" alt="...">
				<div class="carousel-caption">
					<h1>爱与舒适</h1>
					<h2>连接每一个家的故事</h2>
					<p>
						<a href="#" class="show-detail">查看详情 &gt;</a>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="../img/banner2.jpg" alt="...">
				<div class="carousel-caption">
					<h1>
						鸟自爱巢，<br> 人自爱家！
					</h1>
				</div>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<div class="banner">
		<div class="banner-caption">
			<h1>爱与舒适</h1>
			<h2>连接每一个家的故事</h2>
			<p>
				<a href="#" class="show-detail">查看详情 &gt;</a>
			</p>
		</div>
	</div>

	<!--精选房源开始-->
	<div id="hot-house" class="hot-house">
		<div class="container">
			<h1>房产精选</h1>
			<hr class="separator">
			<div class="row house-list">
				<div class="col-md-4 house">
					<div class="house-wrap">
						<img src="../img/1.jpg" alt="">
						<div class="house-info-wrap">
							<h4 class="house-area">香坊区</h4>
							<h2 class="house-title">美景东方公寓</h2>
							<ul class="other-info clearfix">
								<li>
									<h4 class="title">专有面积</h4>
									<p class="desc">
										300m<sup>2</sup>
									</p>
								</li>
								<li>
									<h4 class="title">出租价格</h4>
									<p class="desc">10万元/年</p>
								</li>
								<li>
									<h4 class="title">出售价格</h4>
									<p class="desc">320万元</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-4 house">
					<div class="house-wrap">
						<img src="../img/2.jpg" alt="">
						<div class="house-info-wrap">
							<h4 class="house-area">呼兰区</h4>
							<h2 class="house-title">上下两层复式</h2>
							<ul class="other-info clearfix">
								<li>
									<h4 class="title">专有面积</h4>
									<p class="desc">
										500m<sup>2</sup>
									</p>
								</li>
								<li>
									<h4 class="title">出租价格</h4>
									<p class="desc">15万元/年</p>
								</li>
								<li>
									<h4 class="title">出售价格</h4>
									<p class="desc">520万元</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-4 house">
					<div class="house-wrap">
						<img src="../img/33.jpg" alt="">
						<div class="house-info-wrap">
							<h4 class="house-area">南岗区</h4>
							<h2 class="house-title">保利纯南两居室</h2>
							<ul class="other-info clearfix">
								<li>
									<h4 class="title">专有面积</h4>
									<p class="desc">
										200m<sup>2</sup>
									</p>
								</li>
								<li>
									<h4 class="title">出租价格</h4>
									<p class="desc">7万元/年</p>
								</li>
								<li>
									<h4 class="title">出售价格</h4>
									<p class="desc">100万元</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="more">
				<a href="/jsp/choosepage.jsp">浏览更多</a>
			</div>
		</div>
	</div>



	<footer class="footer">
		<a href="#" class="logo"><img src="../img/logo.png" alt=""></a>
		<ul class="share">
			<li><a href="#" class="weixin"><img
					src="../img/icon_wechat.png" alt=""></a></li>
			<li><a href="#" class="weibo"><img src="../img/icon_weibo.png"
					alt=""></a></li>
		</ul>
		<h3 class="copyright">Copyright &copy;2017 YOIJU Inc.</h3>
		<div class="row concat">
			<div class="col-xs-4 call">
				<a href="#"> <img src="../img/icon_call.png" alt=""> 热线
				</a>
			</div>
			<div class="col-xs-8 advice">
				<a href="#"> <img src="../img/icon_advice_w.png" alt=""> 咨询
				</a>
			</div>
		</div>
	</footer>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/swiper.min.js"></script>
	<script src="../js/index.js"></script>
</body>
</html>
