<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <div  style=" width:13%;height:auto;margin-left:22%;float:left; ">
            <h1 style="font-size:15px; margin-top:70px;">用户名：</h1>
            <h1 style="font-size:15px; margin-top:32px;">昵称：</h1>
            <h1 style="font-size:15px; margin-top:32px;">性别：</h1>
            <h1 style="font-size:15px; margin-top:32px;">身高：</h1>
            <h1 style="font-size:15px; margin-top:32px;">地区：</h1>
            <h1 style="font-size:15px; margin-top:32px;">密保问题：</h1>
            <h1 style="font-size:15px; margin-top:32px;">密保答案：</h1>
            <h1 style="font-size:15px; margin-top:32px;">密码：</h1>
            <h1 style="font-size:15px; margin-top:32px;">确认密码：</h1>
        </div>
        <div class="page-container" style="width:30%;">
            <h1><span style="color:red; font-style: ">寻找<span style="font-size:40px;">爱</span></span></h1>
            <form action="register" method="post">
                <input type="text" name="username"  style="margin-top: 5px;" placeholder="请输入您的用户名！">
                <input type="text" style="margin-top: 5px;"name="name" " placeholder="请输入您的昵称！">
                <input type="radio" style="margin-top: 5px; margin-right:20px;   width:10px; height:10px;" name="sex"  " value="男"><p style="display:inline-block;padding-bottom:15px;padding-top:15px;">男</p>
                <input type="radio" style="margin-top: 5px;margin-right:20px;margin-left:20px;width:10px;height:10px;" name="sex"   value="女"><p style="display:inline-block;">女</p>
                <select name="high" style="margin-top: 15px;margin-bottom:15px;margin-right:20px;margin-left:35%;display: block;" >
                        <option value="150">150cm</option>
                        <option value="151">151cm</option>
                        <option value="152">152cm</option>
                        <option value="153">153cm</option>
                        <option value="154">154cm</option>
                        <option value="155">155cm</option>
                        <option value="156">156cm</option>
                        <option value="157">157cm</option>
                        <option value="158">158cm</option>
                        <option value="159">159cm</option>
                        <option value="160">160cm</option>

                        <option value="161">161cm</option>
                        <option value="162">162cm</option>
                        <option value="163">163cm</option>
                        <option value="164">164cm</option>
                        <option value="165">165cm</option>
                        <option value="166">166cm</option>
                        <option value="167">167cm</option>
                        <option value="168">168cm</option>
                        <option value="169">169cm</option>
                        <option value="170">170cm</option>

                        <option value="171">171cm</option>
                        <option value="172">172cm</option>
                        <option value="173">173cm</option>
                        <option value="174">174cm</option>
                        <option value="175">175cm</option>
                        <option value="176">176cm</option>
                        <option value="177">177cm</option>
                        <option value="178">178cm</option>
                        <option value="179">179cm</option>
                        <option value="180">180cm</option>

                        <option value="181">181cm</option>
                        <option value="182">182cm</option>
                        <option value="183">183cm</option>
                        <option value="184">184cm</option>
                        <option value="185">185cm</option>
                        <option value="186">186cm</option>
                        <option value="187">187cm</option>
                        <option value="188">188cm</option>
                        <option value="189">189cm</option>
                        <option value="190">190cm</option>
                </select>
                <input type="text"style="margin-top: 5px;" name="area"  " placeholder="请输入您的地区！"> 
                <input type="text"style="margin-top: 5px;" name="question"  placeholder="请输入您的密保问题！">
                <input type="text"style="margin-top: 5px;" name="answer" " placeholder="请输入您的密保答案！">      
                <input type="password"style="margin-top: 5px;" name="password" class="password" placeholder="请输入您的用户密码！">
                <input type="password"style="margin-top: 5px;" name="" class="password" placeholder="请确认您的用户密码！">
<!--                  <input type="combobox" class="combobox" name="combobox" class="combobox" placeholder="请输入验证码！">  -->
                <button type="submit"style="margin-top: 5px;" class="submit_button">注册</button>
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

