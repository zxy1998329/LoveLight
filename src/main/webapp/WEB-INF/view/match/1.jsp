<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<c:forEach var="account" items="${result }">
			<tr>
				<td><c:out value="${account.username }"></c:out></td>
				<td><c:out value="${account.name }"></c:out></td>
				<td><c:out value="${account.sex }"></c:out></td>
				<td><c:out value="${account.high }"></c:out></td>
				<td><c:out value="${account.area }"></c:out></td>
				<td><c:out value="${account.accountExtend.salary }"></c:out></td>
				<td><c:out value="${account.accountExtend.edu }"></c:out></td>
				<td><c:out value="${account.accountExtend.birthday }"></c:out></td>
				<td><a href="">添加好友</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>