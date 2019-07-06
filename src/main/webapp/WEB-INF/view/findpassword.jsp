<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

    <head>

        <meta charset="utf-8">
        <title>找回lovekry</title>
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

        <div class="page-container">
            <h1><span style="color:red; font-style: ">修改<span style="font-size:40px;">Lovekey</span></span></h1>
            <form action="/findPassWord/reset" onsubmit="return validate_form(this)"method="post">
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
                                    if (validate_required(newPassword,"新密码为空")==false)
                                        {newPassword.focus();return false}
                                  }
                                }
                        </script> 
                <input type="password" name="newPassWord" class="password" placeholder="请输入您新的密码！">
<!--                  <input type="combobox" class="combobox" name="combobox" class="combobox" placeholder="请输入验证码！">  -->
                <button type="submit" class="submit_button"  style="width:50% ;font-size:15px;">确认修改</button>
               <!--  <div class="error"><span>+</span></div> -->
            </form>
<!--             <div class="connect">
    <p>快捷登录</p>
    <p>
        <a class="facebook" href=""></a>
        <a class="twitter" href=""></a>
    </p>
</div> -->
        </div>
        
        <!-- Javascript -->
        <script src="/assets/js/jquery-1.8.2.min.js" ></script>
        <script src="/assets/js/supersized.3.2.7.min.js" ></script>
        <script src="/assets/js/supersized-init.js" ></script>
        <script src="/assets/js/scripts1.js" ></script>

    </body>

</html>