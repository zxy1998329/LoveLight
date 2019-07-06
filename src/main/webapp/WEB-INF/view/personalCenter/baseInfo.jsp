<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link rel="stylesheet" href="/assets/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="/assets/css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="/assets/css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="/assets/css/superfish.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="/assets/css/magnific-popup.css">

<link rel="stylesheet" href="/assets/css/style1.css">


<!-- Modernizr JS -->
<script src="/assets/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>
<body>
	<div id="fh5co-wrapper">
	<div id="fh5co-page" style="background-color:#FFFAf0">


	<header id="fh5co-header-section" class="sticky-banner">
		<div class="container">
			<div class="nav-header">
				<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
				<h1 id="fh5co-logo"><a href="index.html">LoveLight</a></h1>
				<!-- START #fh5co-menu-wrap -->
				<nav id="fh5co-menu-wrap" role="navigation">
					<ul class="sf-menu" id="fh5co-primary-menu">
						<li class="active"><a href="index.html" >lovelight</a></li>
						<li>
							<a href="groom-bride.html" class="fh5co-sub-ddown">恋爱天堂</a>
							<ul class="fh5co-sub-menu">
								<li><a href="#">Wedding Template</a></li>
								<li><a href="#">Marble Template</a></li>
								<li><a href="#">Tasty Template</a></li>
								<li><a href="#">Education Template</a></li>
								<li><a href="#">Words Template</a></li>
							</ul>
						</li>
						<li><a href="when-where.html">遇见Ta</a></li>
						<li><a href="guest.html">活动天地</a></li>
						<li><a href="gallery.html">爱的BLOG</a></li>
						<li>
							<a href="blog.html">个人中心</a>
							<ul class="fh5co-sub-menu">
								<li><a href="/baseInfo">个人基本资料</a></li>
								<li><a href="/extendInfo">个人拓展资料</a></li>
								<li><a href="#">账号管理</a></li>
								<li><a href="#">实名认证</a></li>
								<li><a href="#">个人空间</a></li>
							</ul>
						</li>
						<li><a href="blog.html" style="font-size:15px;">登录/注册</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>

	<!-- end:header-top -->
	<div class="container" ;>
		<div class="animate-box">
			<div >
				<h1 style="margin-top: 50px;color: #848484;font-family: "Open Sans", Arial, sans-serif;">个人基本资料</h1>
				<div >
					<form action="/baseInfo" method="post" enctype="multipart/form-data">
					<ul  style="list-style:none;font-size: 16px;color: #848484;font-family: "Open Sans", Arial, sans-serif;" >
						<li style="margin-left:10%;margin-top:5%;font-size:18px;">用户名: <input type="text" style="width:30%" class="form-control" name="username" value="${sessionScope.accountInfo.getUsername() }" ></li>
						<li style="margin-left:10%;margin-top:5%;font-size:18px;">原密码:<input type="password" style="width:30%" class="form-control" name="oldPassword" value=""></li>
						<li style="margin-left:10%;margin-top:5%;font-size:18px;">新密码:<input type="password" style="width:30%" class="form-control" name="password" value=""></li>
						<li style="margin-left:10%;margin-top:5%;font-size:18px;">确认密码:<input type="password" style="width:30%" class="form-control" name="rPassword" value=""></li>
						
						<!-- 设置性别默认选中 -->
						<c:set var="account" scope="page" value="${sessionScope.accountInfo }" ></c:set>
						<li style="margin-left:10%;margin-top:5%;font-size:18px;">性别:
						
						<input type="radio" style="margin-left: 3%" name="sex" ${account.sex eq 'M' ? ' checked="checked" ' : ' ' } value="M">男
						<input style="margin-left: 1%"type="radio" name="sex" ${account.sex eq 'F' ? ' checked="checked" ' : ' ' } value="F">女
						</li>
						<li style="margin-left:10%;margin-top:5%;font-size:18px;">身高:
							<select style="margin-left: 3%;width: 80px; " name="high">
		                        <c:forEach begin="140" end="210" var="h">
		                        <option ${account.high eq h ? ' selected="selected"' : ' ' } value="${h }">${h }cm</option>
		                        </c:forEach>
			                </select>
						</li>
						<li style="margin-left:10%;margin-top:5%;font-size:18px;">地区:<input type="text" style="width:30%"class="form-control" name="area" value="${sessionScope.accountInfo.getArea()}"></li>
						<li style="margin-left:10%;margin-top:5%;font-size:18px;">密保问题:<input type="text" style="width:30%"class="form-control" name="question" value="${sessionScope.accountInfo.getQuestion()}"></li>
						<li style="margin-left:10%;margin-top:5%;font-size:20px;">密保答案<textarea style="width:70%; height:100px;"  class="form-control" name="answer">${sessionScope.accountInfo.getAnswer()}</textarea></li>
						<li style="margin-left:20%;margin-top:5%;font-size:20px;"><button type="submit" name="update">修改个人基本信息</button></li>
					</ul>
					</form>
				</div>	
			</div>
		</div>
	</div>



	
<!-- 	<footer>
	<div id="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<h2>Jack &amp; Rose</h2>
				</div>
				<div class="col-md-6 col-md-offset-3 text-center">
					<p class="fh5co-social-icons">
						<a href="#"><i class="icon-twitter2"></i></a>
						<a href="#"><i class="icon-facebook2"></i></a>
						<a href="#"><i class="icon-instagram"></i></a>
						<a href="#"><i class="icon-dribbble2"></i></a>
						<a href="#"><i class="icon-youtube"></i></a>
					</p>
					<p>Copyright &copy; 2019.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
				</div>
			</div>
		</div>
	</div>
</footer> -->
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

