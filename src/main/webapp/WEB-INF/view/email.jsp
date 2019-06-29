<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/findPassWord/sendEmail" method="post">
		账号：<input name="account" placeholder="账号"/><br/>
		邮箱<input name="email" placeholder="email/郵箱"/><br/>
		<input type="submit" value="发送验证码"/>
	</form>
</body>
</html>