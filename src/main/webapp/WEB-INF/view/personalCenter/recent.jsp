<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>个人动态</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="" />
<meta name="keywords" content="" />
<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link href="https://fonts.googleapis.com/css?family=Montez"
	rel="stylesheet">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>

<!-- Animate.css -->
<link rel="stylesheet" href="/assets/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="/assets/css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="/assets/css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="/assets/css/superfish.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="/assets/css/magnific-popup.css">

<link rel="stylesheet" href="/assets/css/style.css">


<!-- Modernizr JS -->
<script src="/assets/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">


			<header id="fh5co-header-section" class="sticky-banner">
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
						<h1 id="fh5co-logo">
							<a href="index.html">LoveLight</a>
						</h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li class="active"><a href="index.html">lovelight</a></li>
								<li><a href="#" class="fh5co-sub-ddown">恋爱天堂</a></li>
								<li><a href="#">遇见Ta</a>
									<ul class="fh5co-sub-menu">
										<li><a href="/match">系统匹配</a></li>
										<li><a href="/match/toCondition">按条件查找</a></li>
										<li><a href="/match/toUserName">按账号查找</a></li>
									</ul></li>
								<li><a href="activity.html">活动天地</a></li>
								<li><a href="blog.html">爱的BLOG</a></li>
								<li><a href="#">个人中心</a>
									<ul class="fh5co-sub-menu">
										<li><a href="baseInfo.html">个人基本资料</a></li>
										<li><a href="personal.html">个人拓展资料</a></li>
										<li><a href="realNameAuthentication.html">实名认证</a></li>
										<li><a href="photo.html">照片墙</a></li>
										<li><a href="/toPersonal">动态</a></li>
									</ul></li>
								<li><a href="indexLogin.html" style="font-size: 15px;">登录/注册</a></li>
								<li><a href="friendslist.html" style="font-size: 15px;">好友列表</a></li>
								<li><a href="vip.html" style="font-size: 15px; color: red;">会员中心</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</header>

			<!-- end:header-top -->
			<div id="fh5co-blog-section" class="fh5co-section-gray">
				<div class="container">
					<div class="row">
						<div class="col-md-8 col-md-offset-2 text-center heading-section">
							<h2>Recent Blog</h2>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row row-bottom-padded-md">
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="fh5co-blog animate-box">
								<a href="#"><img class="img-responsive"
									src="images/cover_bg_1.jpg" alt=""></a>
								<div class="blog-text">
									<div class="prod-title">
										<h3>
											<a href="#">The Wedding Celebration</a>
										</h3>
										<span class="by">by Admin</span> 
										<span class="posted_date">Apr.15th</span> 
										<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
										<p>Far far away, behind the word mountains, far from the
											countries Vokalia and Consonantia, there live the blind
											texts.</p>
										<p>
											<a href="#">Learn More...</a>
										</p>
									</div>
								</div>
							</div>
						</div>

						<c:forEach var="e" items="${list}">
							<div class="col-lg-4 col-md-4 col-sm-6">
								<div class="fh5co-blog animate-box">
									<div class="blog-text">
										<div class="prod-title">
											<span class="by">by <c:out value="${e.liuyanren }"></c:out></span>
											<span class="posted_date"><c:out value="${e.time}"></c:out></span> <span class="comment"><a href=""><i class="icon-bubble2"></i></a></span>
								
											<p>
												<c:out value="${e.neirong}"></c:out>
											</p>
										</div>
									</div>
								</div>
							</div>

						</c:forEach>
						<!-- 					<div class="col-lg-4 col-md-4 col-sm-6"> -->
						<!-- 						<div class="fh5co-blog animate-box"> -->
						<!-- 							<a href="#"><img class="img-responsive" src="images/cover_bg_2.jpg" alt=""></a> -->
						<!-- 							<div class="blog-text"> -->
						<!-- 								<div class="prod-title"> -->
						<!-- 									<h3><a href="#">Preparation of Wedding</a></h3> -->
						<!-- 									<span class="by">by Admin</span> -->
						<!-- 									<span class="posted_date">Apr. 15th</span> -->
						<!-- 									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span> -->
						<!-- 									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p> -->
						<!-- 									<p><a href="#">Learn More...</a></p> -->
						<!-- 								</div> -->
						<!-- 							</div>  -->
						<!-- 						</div> -->
						<!-- 					</div> -->
						<!-- 					<div class="clearfix visible-sm-block"></div> -->
						<!-- 					<div class="col-lg-4 col-md-4 col-sm-6"> -->
						<!-- 						<div class="fh5co-blog animate-box"> -->
						<!-- 							<a href="#"><img class="img-responsive" src="images/cover_bg_3.jpg" alt=""></a> -->
						<!-- 							<div class="blog-text"> -->
						<!-- 								<div class="prod-title"> -->
						<!-- 									<h3><a href="#">Party Night</a></h3> -->
						<!-- 									<span class="by">by Admin</span> -->
						<!-- 									<span class="posted_date">Apr. 20th</span> -->
						<!-- 									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span> -->
						<!-- 									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p> -->
						<!-- 									<p><a href="#">Learn More...</a></p> -->
						<!-- 								</div> -->
						<!-- 							</div>  -->
						<!-- 						</div> -->
						<!-- 					</div> -->
						<!-- 					<div class="clearfix visible-lg-block visible-md-block"></div> -->
						<!-- 					<div class="col-lg-4 col-md-4 col-sm-6"> -->
						<!-- 						<div class="fh5co-blog animate-box"> -->
						<!-- 							<a href="#"><img class="img-responsive" src="images/cover_bg_1.jpg" alt=""></a> -->
						<!-- 							<div class="blog-text"> -->
						<!-- 								<div class="prod-title"> -->
						<!-- 									<h3><a href="#">The Wedding Celebration</a></h3> -->
						<!-- 									<span class="by">by Admin</span> -->
						<!-- 									<span class="posted_date">Apr. 15th</span> -->
						<!-- 									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span> -->
						<!-- 									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p> -->
						<!-- 									<p><a href="#">Learn More...</a></p> -->
						<!-- 								</div> -->
						<!-- 							</div>  -->
						<!-- 						</div> -->
						<!-- 					</div> -->
						<!-- 					<div class="clearfix visible-sm-block"></div> -->
						<!-- 					<div class="col-lg-4 col-md-4 col-sm-6"> -->
						<!-- 						<div class="fh5co-blog animate-box"> -->
						<!-- 							<a href="#"><img class="img-responsive" src="images/cover_bg_2.jpg" alt=""></a> -->
						<!-- 							<div class="blog-text"> -->
						<!-- 								<div class="prod-title"> -->
						<!-- 									<h3><a href="#">Preparation of Wedding</a></h3> -->
						<!-- 									<span class="by">by Admin</span> -->
						<!-- 									<span class="posted_date">Apr. 15th</span> -->
						<!-- 									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span> -->
						<!-- 									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p> -->
						<!-- 									<p><a href="#">Learn More...</a></p> -->
						<!-- 								</div> -->
						<!-- 							</div>  -->
						<!-- 						</div> -->
						<!-- 					</div> -->
						<!-- 					<div class="col-lg-4 col-md-4 col-sm-6"> -->
						<!-- 						<div class="fh5co-blog animate-box"> -->
						<!-- 							<a href="#"><img class="img-responsive" src="images/cover_bg_3.jpg" alt=""></a> -->
						<!-- 							<div class="blog-text"> -->
						<!-- 								<div class="prod-title"> -->
						<!-- 									<h3><a href="#">Party Night</a></h3> -->
						<!-- 									<span class="by">by Admin</span> -->
						<!-- 									<span class="posted_date">Apr. 20th</span> -->
						<!-- 									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span> -->
						<!-- 									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p> -->
						<!-- 									<p><a href="#">Learn More...</a></p> -->
						<!-- 								</div> -->
						<!-- 							</div>  -->
						<!-- 						</div> -->
						<!-- 					</div> -->


					</div>

					<div class="row">
						<div class="col-md-4 col-md-offset-4 text-center animate-box">
							<a href="#" class="btn btn-primary btn-lg">More Blog Posts</a>
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
									<a href="#"><i class="icon-twitter2"></i></a> <a href="#"><i
										class="icon-facebook2"></i></a> <a href="#"><i
										class="icon-instagram"></i></a> <a href="#"><i
										class="icon-dribbble2"></i></a> <a href="#"><i
										class="icon-youtube"></i></a>
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
	<script src="/assets/dist/scripts.min.js"></script>
</body>
</html>

