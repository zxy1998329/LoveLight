<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>主页</title>
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





<script>
    //隐藏大窗口显示小窗口
    function noneDiv(){
        $("#nav").hide(200);
        $("#nav1").show(200);
    }
    //隐藏小窗口显示大窗口
    function blockDiv(){
        $("#nav").show(200);
        $("#nav1").hide(200);
    }
</script>


<style type="text/css">
	/* 回到顶部 */
	/*默认样式，主要是position:fixed实现屏幕绝对定位*/
	#gotoTop{display:;position:fixed;top:75%;right:0; cursor:pointer;margin-top:-50px;margin-left:580px;padding:9px 4px;width:30px;height:auto;text-align:center;border:1px solid #e0e0e0;background:#fff;}
	/*用CSS表达式(expression)果*/来实现ie6下position:fixed效
	#gotoTop{_position:absolute;_top:expression(documentElement.scrollTop + documentElement.clientHeight * 3/4 + "px")}
	/*鼠标进入的反馈效果*/
	#gotoTop.hover{background:#5CB542;color:#fff;text-decoration:none;}

.test1{
	width:75px; height: 800px;right: 0;
}	
 .nav { width:75px; height: 400px; position:fixed;right:0;top:25%;} 
  .up { width:75px; height: 400px; position:fixed;top:60%;right: 0;} 
.test1 .nav2 { width:75px; height: 400px; position:fixed;right:0;top:30%;display: none;} 
#nav1 { 
    width:15px;; 
    height: 100px; 
     
    position:fixed;
    right:0;
    top:25%;
    display:none;
    background-image:url(/assets/images/33.jpg);
    background-position:-150px 0px;
}



.test1:hover>.nav2{

	display:block;
}
 




 #yinc{background-image:url(images/33.jpg);width:18px;  height:18px; background-position:-46px -20px; float:right;margin:10px;} 
 #yinc:hover{background-position:-66px -20px;}

</style>

<script type="text/javascript">
	function gotoTop(min_height){
	//预定义返回顶部的html代码，它的css样式默认为不显示
	    var gotoTop_html = '<div id="gotoTop">返回顶部</div>';
	//将返回顶部的html代码插入页面上id为page的元素的末尾 
	    $("#page").append(gotoTop_html);
	    $("#gotoTop").click(//定义返回顶部点击向上滚动的动画
	function(){$('html,body').animate({scrollTop:0},700);
	    }).hover(//为返回顶部增加鼠标进入的反馈效果，用添加删除css类实现
	        function(){$(this).addClass("hover");},
	function(){$(this).removeClass("hover");
	    });
	//获取页面的最小高度，无传入值则默认为600像素
	    min_height ? min_height = min_height : min_height = 600;
	//为窗口的scroll事件绑定处理函数
	    $(window).scroll(function(){
	//获取窗口的滚动条的垂直位置
	        var s = $(window).scrollTop();
	//当窗口的滚动条的垂直位置大于页面的最小高度时，让返回顶部元素渐现，否则渐隐
	        if( s > min_height){
	            $("#gotoTop").fadeIn(100);
	        }else{
	            $("#gotoTop").fadeOut(200);
	        };
	    });
	};
	</script>

</head>
<body>
	<div id="fh5co-wrapper">
	<div id="fh5co-page">

	<div class="fh5co-hero" data-section="home">
		<div class="fh5co-overlay"></div>
		<div class="fh5co-cover text-center" data-stellar-background-ratio="0.5" style="background-image: url(/assets/images/cover_bg_1.jpg);">
			<div class="display-t">
				<div class="display-tc">
					<div class="container">
						<div class="col-md-10 col-md-offset-1">
							<div class="animate-box">
								<h1 style="font-size:50px;">Welcome LoveLight</h1>
								<h2>Just For<span style="font-size:200px;">You</span></h2>
								<!-- <p><span>28.12.2019</span></p> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

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
								<li><a href="/match">系统匹配</a></li>
								<li><a href="/match/toCondition">按条件查找</a></li>
								<li><a href="/match/toUserName">按账号查找</a></li>
							</ul>
						</li>
						<li><a href="activity.html">活动天地</a></li>
						<li><a href="blog.html">爱的BLOG</a></li>
						<li>
							<a href="#">个人中心</a>
							<ul class="fh5co-sub-menu">
								<li><a href="/baseInfo">个人基本资料</a></li>
								<li><a href="/personal">个人拓展资料</a></li>
								<li><a href="realNameAuthentication.html">实名认证</a></li>
								<li><a href="photo.html">照片墙</a></li>
								<li><a href="/toPersonal">动态</a></li>
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

	<!-- end:header-top -->




	<div id="fh5co-couple" class="fh5co-section-gray" style="padding-top:64px;padding-bottom: 15px;">
		<div class="container" >
<!-- 			 <div class="row row-bottom-padded-md animate-box">
				<div class="col-md-6 col-md-offset-3 text-center">
					<div class="col-md-5 col-sm-5 col-xs-5 nopadding">
						<img src="images/blogs1.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2 nopadding"><h2 class="amp-center"><i class="icon-heart"></i></h2></div>
					<div class="col-md-5 col-sm-5 col-xs-5 nopadding">
						<img src="images/blogs3.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					</div> 
				</div>
			</div> 
 -->
			<div class="row animate-box" >
				<div class="col-md-8 col-md-offset-2">
					<div class="col-md-12 text-center heading-section" style="margin-bottom:0px;">
						<h2>Meet Each Other</h2>
						<!-- <p><strong>on Dec 28, 2019 &mdash; Boracay, Philippines</strong></p> -->
					</div>
				</div>
			</div>
		</div>
	</div>
	 <div id="fh5co-gallery" style="padding-top:30px;">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="gallery animate-box">
							<a class="gallery-img image-popup image-popup" href="/assets/images/gallery-1.jpg"><img src="/assets/images/blogs1.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
						<div class="gallery animate-box">
							<a class="gallery-img image-popup" href="/assets/images/gallery-7.jpg"><img src="/assets/images/blogs2.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
					</div>
					<div class="col-md-4">
						<div class="gallery animate-box">
							<a class="gallery-img image-popup" href="/assets/images/gallery-6.jpg"><img src="/assets/images/blogs3.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
						<div class="gallery animate-box">
							<a class="gallery-img image-popup" href="/assets/images/gallery-2.jpg"><img src="/assets/images/blogs4.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
						<div class="gallery animate-box">
							<a class="gallery-img image-popup" href="/assets/images/gallery-5.jpg"><img src="/assets/images/blogs5.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
					</div>
					<div class="col-md-4">
						<div class="gallery animate-box">
							<a class="gallery-img image-popup" href="/assets/images/gallery-3.jpg"><img src="/assets/images/blogs6.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
						<div class="gallery animate-box">
							<a class="gallery-img image-popup" href="/assets/images/gallery-4.jpg"><img src="/assets/images/gallery-4.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div id="fh5co-countdown">
		<div class="row">
			<div class="col-md-8 col-md-offset-2 text-center animate-box">
				<p class="countdown">
					<span id="days"></span>
					<span id="hours"></span>
					<span id="minutes"></span>
					<span id="seconds"></span>
				</p>
			</div>
		</div>
	</div>

		<div id="fh5co-blog-section" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section">
						<h2>Blogs</h2>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row row-bottom-padded-md">
					<div class="col-lg-4 col-md-4 col-sm-6">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="/assets/images/cover_bg_1.jpg" alt=""></a>
							<div class="blog-text">
								<div class="prod-title">
									<h3><a href="#">The Wedding Celebration</a></h3>
									<span class="by">by Admin</span>
									<span class="posted_date">Apr. 15th</span>
									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<p><a href="#">Learn More...</a></p>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="/assets/images/girls4.jpg" alt=""></a>
							<div class="blog-text">
								<div class="prod-title">
									<h3><a href="#">Preparation of Wedding</a></h3>
									<span class="by">by Admin</span>
									<span class="posted_date">Apr. 15th</span>
									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<p><a href="#">Learn More...</a></p>
								</div>
							</div> 
						</div>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-lg-4 col-md-4 col-sm-6">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="/assets/images/cover_bg_3.jpg" alt=""></a>
							<div class="blog-text">
								<div class="prod-title">
									<h3><a href="#">Party Night</a></h3>
									<span class="by">by Admin</span>
									<span class="posted_date">Apr. 20th</span>
									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<p><a href="#">Learn More...</a></p>
								</div>
							</div> 
						</div>
					</div>
					<div class="clearfix visible-lg-block visible-md-block"></div>
					<div class="col-lg-4 col-md-4 col-sm-6">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="/assets/images/girls5.jpg" alt=""></a>
							<div class="blog-text">
								<div class="prod-title">
									<h3><a href="#">The Wedding Celebration</a></h3>
									<span class="by">by Admin</span>
									<span class="posted_date">Apr. 15th</span>
									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<p><a href="#">Learn More...</a></p>
								</div>
							</div> 
						</div>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-lg-4 col-md-4 col-sm-6">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="/assets/images/girls6.jpg" alt=""></a>
							<div class="blog-text">
								<div class="prod-title">
									<h3><a href="#">Preparation of Wedding</a></h3>
									<span class="by">by Admin</span>
									<span class="posted_date">Apr. 15th</span>
									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<p><a href="#">Learn More...</a></p>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="/assets/images/cover_bg_3.jpg" alt=""></a>
							<div class="blog-text">
								<div class="prod-title">
									<h3><a href="#">Party Night</a></h3>
									<span class="by">by Admin</span>
									<span class="posted_date">Apr. 20th</span>
									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<p><a href="#">Learn More...</a></p>
								</div>
							</div> 
						</div>
					</div>


				</div>

				<div class="row">
					<div class="col-md-4 col-md-offset-4 text-center animate-box">
						<a href="#" class="btn btn-primary btn-lg">More Blog Posts</a>
					</div>
				</div>

			</div>
		</div>
				<div id="fh5co-groom-bride">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h2>activities &amp; fun</h2>
					</div>
				</div>
				<div class="row padding">
					<div class="couple-wrap">
						<div class="col-md-6 nopadding animate-box">
							<img src="/assets/images/boys1.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
						</div>
						<div class="col-md-6 nopadding animate-box">
							<div class="couple-desc">
								<h3>Jack Wood</h3>
								<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius molestias accusamus alias autem provident. Odit ab aliquam dolor eius. Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
								<p class="fh5co-social-icons">
									<a href="#"><i class="icon-twitter2"></i></a>
									<a href="#"><i class="icon-facebook2"></i></a>
									<a href="#"><i class="icon-instagram"></i></a>
									<a href="#"><i class="icon-dribbble2"></i></a>
									<a href="#"><i class="icon-youtube"></i></a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row padding">
					<div class="couple-wrap">
						<div class="col-md-6 col-md-push-6 nopadding animate-box">
							<img src="/assets/images/girls1.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
						</div>
						<div class="col-md-6 col-md-pull-6 nopadding animate-box">
							<div class="couple-desc">
								<h3>Rose Thomas</h3>
								<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius molestias accusamus alias autem provident. Odit ab aliquam dolor eius. Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
								<p class="fh5co-social-icons">
									<a href="#"><i class="icon-twitter2"></i></a>
									<a href="#"><i class="icon-facebook2"></i></a>
									<a href="#"><i class="icon-instagram"></i></a>
									<a href="#"><i class="icon-dribbble2"></i></a>
									<a href="#"><i class="icon-youtube"></i></a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

			<div id="fh5co-groom-bride">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h2>activities &amp; fun</h2>
					</div>
				</div>
				<div class="row padding">
					<div class="couple-wrap">
						<div class="col-md-6 nopadding animate-box">
							<img src="/assets/images/homeact1.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
						</div>
						<div class="col-md-6 nopadding animate-box">
							<div class="couple-desc">
								<h3>菲一般的美丽</h3>
								<p></p>
								<p class="fh5co-social-icons">
									<a href="#"><i class="icon-twitter2"></i></a>
									<a href="#"><i class="icon-facebook2"></i></a>
									<a href="#"><i class="icon-instagram"></i></a>
									<a href="#"><i class="icon-dribbble2"></i></a>
									<a href="#"><i class="icon-youtube"></i></a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row padding">
					<div class="couple-wrap">
						<div class="col-md-6 col-md-push-6 nopadding animate-box">
							<img src="/assets/images/homeact2.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
						</div>
						<div class="col-md-6 col-md-pull-6 nopadding animate-box">
							<div class="couple-desc">
								<h3>相约在恒大，情定新纪缘</h3>
								<p></p>
								<p class="fh5co-social-icons">
									<a href="#"><i class="icon-twitter2"></i></a>
									<a href="#"><i class="icon-facebook2"></i></a>
									<a href="#"><i class="icon-instagram"></i></a>
									<a href="#"><i class="icon-dribbble2"></i></a>
									<a href="#"><i class="icon-youtube"></i></a>
								</p>
							</div>
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

		<!-- 默认显示的浮窗 --> 
	<div class="nav">
		<div class="test1">
			<img src="/assets/images/service.png" width="35px" height="35px">
		
		
		<div class="nav2"> 
			<p> 
				<a target="_blank" href="#"> 
					<span>客服1</span> <br/>
					<img border="0" src="/assets/images/button11.gif" alt="点击这里给我发消息" title="点击这里给我发消息"> 
					
				</a> 
			</p> 
			<p> <a target="_blank" href="#"> 
				<span>客服2</span> <br/>
				<img border="0" src="/assets/images/button11.gif" alt="点击这里给我发消息" title="点击这里给我发消息"> </a> </p> 
		</div> 
		</div> 
	</div> <!-- 小浮窗 --> 
	<div id="nav1" onclick="blockDiv();"> </div>
	
	<div>
<!--             <img  src="images/spaceship.png" width="35px" height="35px" onclick="gotoTop
()" style="float:right;"/> -->
            <a  id="gotoTop" onclick="gotoTop()"  style="" href="">返回顶部</a>
    </div>



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

