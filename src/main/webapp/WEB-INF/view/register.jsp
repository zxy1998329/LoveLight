<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="registercontroller" method="post" />
		用户名:<input type="text" name="username"/><br/>
		密码：<input type="text" name="password"/><br/>
		密保问题：<input type="text" name="question"/><br/>
		密保答案：<input type="text" name="answer"/><br/>
		昵称：<input type="text" name="name"/><br/>
		性别：<input type="text" name="sex"/><br/>
		身高：<input type="text" name="high"/><br/>
		地区：<input type="text" name="area"/><br/>
		<input type="submit" value="注册" >
	</form>
</body>
</html>