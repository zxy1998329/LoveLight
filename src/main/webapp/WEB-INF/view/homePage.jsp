<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>hello ${sessionScope.username }</h1>
<form action = "/vipcenter" method = "post">
<button type="submit" class="submit_button">会员中心</button>
</form>

</body>
</html>