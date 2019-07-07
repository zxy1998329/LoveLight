<%@page import="com.loveLight.entity.FriendsList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.io.PrintWriter"%>
<%
	FriendsList friends = (FriendsList)request.getSession().getAttribute("friends");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>好友列表</h2>
	<c:if test="${friends.f1!=null}">
		<a href="/toRecent?index=1"><c:out value="${friends.f1}"></c:out></a>
	</c:if>

	<c:if test="${friends.f2!=null}">
		<a href="/toRecent?index=2"><c:out value="${friends.f2}"></c:out></a>
	</c:if>

	<c:if test="${friends.f3!=null}">
		<a href="/toRecent?index=3"><c:out value="${friends.f3}"></c:out></a>
	</c:if>

	<c:if test="${friends.f4!=null}">
		<a href="/toRecent?index=4"><c:out value="${friends.f4}"></c:out></a>
	</c:if>

	<c:if test="${friends.f5!=null}">
		<a href="/toRecent?index=5"><c:out value="${friends.f5}"></c:out></a>
	</c:if>




</body>
</html>