<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="photoWall" method="post" enctype=multipart/form-data >
	输入你的描述:<input type="text" name="info" /><br>
	<input type="file" name="photoWall" />
	<input type="submit" value="上传照片">
	</form>
	
	<c:set var="pwList" value="${sessionScope.pwList }"></c:set>
	
	<c:forEach items="${pwList }" var="photo" >
	<img alt="" src="${photo['src'] }" height="300" width="300">
	</c:forEach>
	
	
	
</body>
</html>