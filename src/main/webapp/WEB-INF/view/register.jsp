<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<!DOCTYPE html>
<html lang="en" class="no-js">

    <head>

        <meta charset="utf-8">
        <title>注册，寻找爱</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/supersized.css">
        <link rel="stylesheet" href="assets/css/style.css">
  

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="page-container">
            <h1>注册，<span style="color:red; font-style: ">寻找<span style="font-size:40px;">爱</span></span></h1>
            <form action="register" method="post">
                <input type="text" name="username" class="username" placeholder="请输入您的用户名！">
                <input type="text" name="name" class="username" placeholder="请输入您的昵称！">
                <input type="text" name="sex" class="username" placeholder="请输入您的性别！">  
                <input type="text" name="high" class="username" placeholder="请输入您的身高！">
                <input type="text" name="area" class="username" placeholder="请输入您的地区！"> <input type="text" name="question"  placeholder="请输入您的密保问题！">
                <input type="text" name="answer"  placeholder="请输入您的密保答案！">      
                <input type="password" name="password" class="password" placeholder="请输入您的用户密码！">
                <input type="password" name="" class="password" placeholder="请确认您的用户密码！">
<!--                  <input type="combobox" class="combobox" name="combobox" class="combobox" placeholder="请输入验证码！">  -->
                <button type="submit" class="submit_button">注册</button>
                <div class="error"><span>+</span></div>
            </form>
            
        </div>
		
        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js" ></script>
        <script src="assets/js/supersized.3.2.7.min.js" ></script>
        <script src="assets/js/supersized-init.js" ></script>
        <script src="assets/js/scripts.js" ></script>

    </body>

</html>

