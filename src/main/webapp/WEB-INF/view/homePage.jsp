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

<form action = "/match" method = "post">
<button type="submit" class="submit_button">系统匹配</button>
</form>


<form action = "/match/toUserName" method = "post">
<button type="submit" class="submit_button">账号匹配</button>
</form>

<form action = "/match/toCondition" method = "post">
<button type="submit" class="submit_button">条件匹配</button>
</form>

</body>
</html>