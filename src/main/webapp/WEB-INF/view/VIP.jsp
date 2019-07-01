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
	
	<form action = "/recharge" method = "post">
	<button type="submit" class="submit_button">充值会员</button>
	<c:if test="${sessionScope.reset==0 }">	
		<c:if test="${sessionScope.role==0 }">
		<p>您还未进行实名认证，请先实名认证！</p>
		</c:if>
		<c:if test="${sessionScope.role==2 }">
		<p>您已经是尊贵的VIP！</p>
		</c:if>
	</c:if>	
	<h1>${sessionScope.role}</h1>
	</form>

	
	
	
	<form action = "/permissions" method = "post">
	<button type="submit" class="submit_button">查看权限</button>
	</form>
</body>
</html>