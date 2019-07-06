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

<form action = "/baseInfo">
<button type="submit" class="submit_button">基本资料</button>
</form>

<form action="/friendsadd" method = "post">
 <input type="text" name="username" class="username" placeholder="请输入需要添加的好友名！">
<button type="submit" class="submit_button">添加好友</button>
</form>

<form action="/friendsinvite" method = "post">
<button type="submit" class="submit_button">好友邀请</button>
</form>
</body>
</html>