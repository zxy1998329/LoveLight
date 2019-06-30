<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<%
	String account = (String) request.getSession().getAttribute("account");
	String email = (String) request.getSession().getAttribute("email");
%>


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
<link rel="stylesheet" href="/assets/css/style.css">
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
		<h1>
			<span style="color: red; font-style:">找回<span
				style="font-size: 40px;">Lovekey</span></span>
		</h1>
		<form action="/findPassWord/sendEmail" method="post">
			<c:choose>
				<c:when test="${account!=null}">
					<input type="text" name="account" class="username"
						value="<%=account%>">
					<input type="text" name="email" class="username" value="<%=email%>">

				</c:when>

				<c:otherwise>
					<input type="text" name="account" class="username"
						placeholder="请输入您的用户名！">
					<input type="text" name="email" class="username"
						placeholder="请输入您的用户邮箱！">
				</c:otherwise>
			</c:choose>
			<button type="submit" class="submit_button"
				style="width: 50%; font-size: 15px;">发送验证码</button>

		</form>
		<form action="/findPassWord/match" method="post">

			<input type="text" name="inputNum" class="username"
				placeholder="请输入收到的验证码！">
			<button type="submit" class="submit_button"
				style="width: 50%; font-size: 15px;">确认验证码</button>
			<div class="error">
				<span>+</span>
			</div>

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
	<script src="/assets/js/jquery-1.8.2.min.js"></script>
	<script src="/assets/js/supersized.3.2.7.min.js"></script>
	<script src="/assets/js/supersized-init.js?v=1"></script>
	<script src="/assets/js/scripts.js"></script>

</body>

</html>

