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
<title>个人拓展资料</title>
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

<link rel="stylesheet" href="/assets/css/style.css">


<!-- Modernizr JS -->
<script src="/assets/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
<script src="js/respond.min.js"></script>
<![endif]-->


<!--上传图片-->
<style type="text/css">
	.con4 {
		width: 300px;
		height: auto;
		overflow: hidden;
		margin: 20px 20px ;
		color: #FFFFFF;
	}
	
	.con4 .btn {
		width: 50%;
		height: 40px;
		margin-left:20px;
		text-align: center;
		background: #d8b49c;
		display: block;
		font-size: 16px;
		border-radius: 5px;

	}
	
	.upload {
		float: left;
		position: relative;
	}
	
	.upload_pic {
		display: block;
		width: 100%;
		height: 40px;
		position: absolute;
		left: 0;
		top: 0;
		opacity: 0;
		border-radius: 5px;
	}
	
	#cvs {
		border: 1px solid #000;
		margin: 20px 0 20px 50px;
	}
</style>

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
						<li><a href="/friendslist1" style="font-size:15px;">好友列表</a></li>
						<li><a href="vip.html" style="font-size:15px;color: red;">会员中心</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<!--输入为空时提示 -->
	<script type="text/javascript">
		function validate_required(field,alerttxt)
		{
				with (field)
				  {
				  if (value==null||value=="")
				    {alert(alerttxt);return false}
				  else {return true}
				  }
				}

				function validate_form(thisform)
				{
				with (thisform)
				  {
					if (validate_required(name,"姓名为空")==false)
					    {name.focus();return false}
					if (validate_required(birthday,"生日内容为空")==false)
					    {birthday.focus();return false}
					if (validate_required(salary,"月薪为空")==false)
					    {salary.focus();return false}
					if (validate_required(phoneNum,"手机号为空")==false)
					    {phoneNum.focus();return false}
					if (validate_required(introduction,"个人介绍为空")==false)
					    {introduction.focus();return false}
				  }
				}
		</script>
	<!-- end:header-top -->
	<div class="container" ;>
		<div class="animate-box">
			<div >
				<h1 style="margin-top: 50px;color: #848484;font-family: "Open Sans", Arial, sans-serif;">个人拓展资料</h1>
			<div class="con4">
				<canvas id="cvs" width="100" height="100"></canvas> <span class="btn upload">上传头像<input type="file" class="upload_pic" id="upload" /></span>
			</div>
				<script>
					//获取上传按钮
					var input1 = document.getElementById("upload");
					if(typeof FileReader === 'undefined') {
						//result.innerHTML = "抱歉，你的浏览器不支持 FileReader"; 
						input1.setAttribute('disabled', 'disabled');
					} else {
						input1.addEventListener('change', readFile, false);
		 
					}
		 
					function readFile() {
						var file = this.files[0]; //获取上传文件列表中第一个文件
						if(!/image\/\w+/.test(file.type)) {
							//图片文件的type值为image/png或image/jpg
							alert("文件必须为图片！");
							return false;
						}
						// console.log(file);
						var reader = new FileReader(); //实例一个文件对象
						reader.readAsDataURL(file); //把上传的文件转换成url
						//当文件读取成功便可以调取上传的接口
						reader.onload = function(e) {
		 
							var image = new Image();
							// 设置src属性 
							image.src = e.target.result;
							var max = 200;
							// 绑定load事件处理器，加载完成后执行，避免同步问题
							image.onload = function() {
								// 获取 canvas DOM 对象 
								var canvas = document.getElementById("cvs");
								// 获取 canvas的 2d 环境对象, 
								var ctx = canvas.getContext("2d");
								// canvas清屏 
								ctx.clearRect(0, 0, canvas.width, canvas.height);
		 
								ctx.drawImage(image, 0, 0, 200, 200);
								
							};
						}
					};
				</script>

				<div >
					<form action="" onsubmit="return validate_form(this)" method="post">
					<ul  style="list-style:none;font-size: 16px;color: #848484;font-family: "Open Sans", Arial, sans-serif;" >
						<li style="margin-left:10%;margin-top:5%;font-size:18px;">姓名: <input id="t1" type="text" style="width:30%" class="form-control" name="name"></li>
						<li style="margin-left:10%;margin-top:5%;font-size:18px;">生日:<input id="t2" type="text" style="width:30%" class="form-control" name="birthday"></li>
						<li style="margin-left:10%;margin-top:5%;font-size:18px;">婚姻状况:<input type="radio" style="margin-left: 3%" name="marry" checked="checked">已婚<input style="margin-left: 1%"type="radio" name="marry">未婚<input style="margin-left: 1%"type="radio" name="marry">离婚</li>
						<li style="margin-left:10%;margin-top:5%;font-size:18px;">学历:
							<select style="margin-left: 3%;width: 80px; " name="edu">
									<option value="primarySchool">小学</option>
									<option value="juniorHighSchool">初中</option>
									<option value="highSchool">高中</option>
									<option value="bachelor">学士</option>
									<option value="postgraduate">硕士</option>
									<option value="doctrate">博士</option>
							</select>
						</li>
						<li style="margin-left:10%;margin-top:5%;font-size:18px;">月薪:<input id="t3" type="text" style="width:30%"class="form-control" name="salary"></li>
						<li style="margin-left:10%;margin-top:5%;font-size:18px;">手机号:<input id="t4" type="text" style="width:30%"class="form-control" name="phoneNum"></li>
						<li style="margin-left:10%;margin-top:5%;font-size:20px;">自我介绍<textarea id="t5" style="width:70%; height:100px;"  class="form-control" name="introduction"></textarea></li>
						<li style="margin-left:20%;margin-top:5%;font-size:20px;"><button  type="submit" name="update">修改个人拓展信息</button></li>
					</ul>
					</form>
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
<script src="/assets/dist/scripts.min.js"></script>
</body>
</html>

