<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<from action="/emailMatchSuccess" method="post">
		输入验证码：<input name="inputNum"/>
		<input type="submit" value="提交">
	</from>
</body>
</html>