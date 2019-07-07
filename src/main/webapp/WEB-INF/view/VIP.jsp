<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>personal</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="" />
<meta name="keywords" content="" />
<!-- Facebook and Twitter integration -->
<meta property="og:title" content=""/>
<meta property="og:image" content=""/>
<meta property="og:url" content=""/>
<meta property="og:site_name" content=""/>
<meta property="og:description" content=""/>
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link href="https://fonts.googleapis.com/css?family=Montez" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

<!-- Animate.css -->
<link rel="stylesheet" href="assets/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="assets/css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="assets/css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="assets/css/superfish.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="assets/css/magnific-popup.css">

<link rel="stylesheet" href="assets/css/style.css">


<!-- Modernizr JS -->
<script src="assets/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
<script src="assets/js/respond.min.js"></script>
<![endif]-->



</head>
<body>
	<div id="fh5co-wrapper">
	<div id="fh5co-page" style="background-color:#F6FAF7">


	<header id="fh5co-header-section" class="sticky-banner">
		<div class="container">
			<div class="nav-header">
				<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
				<h1 id="fh5co-logo"><a href="index.html">LoveLight</a></h1>
				<!-- START #fh5co-menu-wrap -->
				<nav id="fh5co-menu-wrap" role="navigation">
					<ul class="sf-menu" id="fh5co-primary-menu">
						<li class="active"><a href="index.html" >lovelight</a></li>
						<li><a href="#" class="fh5co-sub-ddown">恋爱天堂</a></li>
						<li><a href="#">遇见Ta</a>
							<ul class="fh5co-sub-menu">
								<li><a href="match.html">系统匹配</a></li>
								<li><a href="conditionFind.html">按条件查找</a></li>
								<li><a href="usernameFind.html">按账号查找</a></li>
							</ul>
						</li>
						<li><a href="activity.html">活动天地</a></li>
						<li><a href="blog.html">爱的BLOG</a></li>
						<li>
							<a href="#">个人中心</a>
							<ul class="fh5co-sub-menu">
								<li><a href="baseInfo.html">个人基本资料</a></li>
								<li><a href="personal.html">个人拓展资料</a></li>
								<li><a href="realNameAuthentication.html">实名认证</a></li>
								<li><a href="photo.html">照片墙</a></li>
								<li><a href="recent.html">动态</a></li>
							</ul>
						</li>
						<li><a href="indexLogin.html" style="font-size:15px;">登录/注册</a></li>
						<li><a href="vip.html" style="font-size:15px;color: red;">会员中心</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>

	<!-- end:header-top -->
	<div class="container"  style="background-image:url(assets/images/banner.jpg) ";>
		<div class="animate-box" >
			<div >
					<%-- <form action = "/recharge" method = "post">
						<button type="submit" class="submit_button">充值会员</button>
						<c:if test="${sessionScope.reset==0 }">	
							
							<c:if test="${sessionScope.role==2 }">
							<p>您已经是尊贵的VIP！</p>
							</c:if>
						</c:if>	
						<h1>${sessionScope.role}</h1> --%>
				
					<a href= "/recharge" style = "margin-top:30%;">开通"爱你一万年"豪华至尊VIP服务</a>
<!-- 				<input id="Mybutton" style="margin-left:10%;margin-top:200px; background-color:#FF0000;"  type="button" value="快速开通会员" onclick="window.open('recent.html')"> -->
			<br><br><br><br><br><br><br><br><br>
				<c:if test="${sessionScope.role==1 }">
						<form action = "/vipsuccess"  method = "post">
							
						</form>
				</c:if>
			
			</div>
		</div>
	</div>




		<div id="fh5co-gallery">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h2>service</h2>
					</div>
				</div>
				
				<a href="" style="font-size: 25px">更贴心-尊贵身份身份特权</a>
				<br>
				<br>

				<div class="row">
					<div class="col-md-4">
						<div class="gallery animate-box">
							<a class="gallery-img image-popup image-popup" href="assets/images/vip.jpg"><img src="assets/images/vip.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
						<div class="gallery animate-box">
							<a class="gallery-img image-popup" href="assets/images/leave.jpg"><img src="assets/images/leave.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
					</div>
					<div class="col-md-4">
						<div class="gallery animate-box">
							<a class="gallery-img image-popup" href="assets/images/friends.jpg"><img src="assets/images/friends.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
						<div class="gallery animate-box">
							<a class="gallery-img image-popup" href="assets/images/number.jpg"><img src="assets/images/number.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
					</div>
					<div class="col-md-4">
						<div class="gallery animate-box">
							<a class="gallery-img image-popup" href="assets/images/search.jpg"><img src="assets/images/search.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
					</div>
				</div>
			
				<a href="" style="font-size: 25px">更特别-独家特权</a>
				<br>
				<br>
				<div class="row">
					<div class="col-md-4">
						<div class="gallery animate-box">
							<a class="gallery-img image-popup image-popup" href="assets/images/service.bmp"><img src="assets/images/service.bmp" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
					</div>
					
				
				</div>

				<a href="" style="font-size: 25px">更丰富-礼品&游戏特权</a>
				<br>
				<br>

				<div class="row">
					<div class="col-md-4">
						<div class="gallery animate-box">
							<a class="gallery-img image-popup image-popup" href="assets/images/travel.jpg"><img src="assets/images/travel.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
					</div>
					<div class="col-md-4">
						<div class="gallery animate-box">
							<a class="gallery-img image-popup" href="assets/images/car.jpg"><img src="assets/images/car.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
					</div>
					<div class="col-md-4">
						<div class="gallery animate-box">
							<a class="gallery-img image-popup" href="assets/images/game.jpg"><img src="assets/images/game.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
					</div>
				</div>

			</div>
		</div>
		








	
	<footer>
	<div id="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<h2>LoveLight</h2>
				</div>
				<div class="col-md-6 col-md-offset-3 text-center">
					<p class="fh5co-social-icons">
						<a href="#"><i class="icon-twitter2"></i></a>
						<a href="#"><i class="icon-facebook2"></i></a>
						<a href="#"><i class="icon-instagram"></i></a>
						<a href="#"><i class="icon-dribbble2"></i></a>
						<a href="#"><i class="icon-youtube"></i></a>
					</p>
					<p>Copyright &copy; 2019.Company name All rights reserved.</p>
				</div>
			</div>
		</div>
	</div>
</footer> 
</div>
<!-- END fh5co-page -->

</div>
<!-- END fh5co-wrapper -->

<!-- Google Map -->
<!---<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>--->
<!-- jQuery -->
<script src="assets/dist/scripts.min.js"></script>
</body>
</html>




	
	