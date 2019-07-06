<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p> 好友请求1:${sessionScope.invite1 }</p>
<form action="/allow1">
<button type="submit" class="submit_button">同意</button>
</form>
<form action="/refuse1">
<button type="submit" class="submit_button">拒绝</button>
</form>
<p> 好友请求2:${sessionScope.invite2 }</p>
<form action="/allow2">
<button type="submit" class="submit_button">同意</button>
</form>
<form action="/refuse2">
<button type="submit" class="submit_button">拒绝</button>
</form>
<p> 好友请求3:${sessionScope.invite3 }</p>
<form action="/allow3">
<button type="submit" class="submit_button">同意</button>
</form>
<form action="/refuse3">
<button type="submit" class="submit_button">拒绝</button>
</form>
</body>
</html>