<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

    <head>

        <meta charset="utf-8">
        <title>登录lovelight</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="/assets/css/reset.css">
        <link rel="stylesheet" href="/assets/css/supersized.css">
        <link rel="stylesheet" href="/assets/css/style1.css">
        <style type="text/css">
        login {
            font-size: larger;
        }



        </style>

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body>

        <div  style=" width:13%;height:auto;margin-left:28%;float:left; ">
                    <h1 style="font-size:17px; margin-top:40%;">用户名：</h1>
                    <h1 style="font-size:17px; margin-top:20%;">密码：</h1>
        </div>

        <div class="page-container">
            <h1>登录，<span style="color:red; font-style: ">寻找<span style="font-size:40px;">LoveLight</span></span></h1>

            
            <form action="/login" method="post">
                <input type="text" name="username" style="width: 70%;" class="username" placeholder="请输入您的用户名！"><c:if test="${sessionScope.loginf==1 }">账号或密码错误</c:if>
                <input type="password" name="password" style="width: 70%;" class="password" placeholder="请输入您的用户密码！">
<!--                  <input type="combobox" class="combobox" name="combobox" class="combobox" placeholder="请输入验证码！">  -->
                <button type="submit" style="width: 80%;" class="submit_button">登录</button>
                <pre>                                               </pre>
                <a class="connect" href="/register" style="text-decoration: none;"><span style="font-size: 20px;color: white;">注册新用户</span></a>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <a class="connect"href="http://localhost:8080/findPassWord/email" style="text-decoration: none;"><span style="font-size: 20px;color: white;">忘记密码？</span></a>
                <div class="error"><span>+</span></div>

               
            </form>
<!--             <div class="connect">
    <p>快捷登录</p>
    <p>
        <a class="facebook" href=""></a>
        <a class="twitter" href=""></a>
    </p>
</div> -->

        </div>



        <br>
                
            <a href="index.jsp" style="margin-left:-1%;margin-top:50%;color: white;height: 600px; ">返回主页</a>

        <br>
		
        <!-- Javascript -->
        <script src="/assets/js/jquery-1.8.2.min.js" ></script>
        <script src="/assets/js/supersized.3.2.7.min.js" ></script>
        <script src="/assets/js/supersized-init.js" ></script>
        <script src="/assets/js/scripts1.js" ></script>

    </body>

</html>

