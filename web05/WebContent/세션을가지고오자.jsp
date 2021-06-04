<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름은 <%= session.getAttribute("name") %>이고, 
나이는 <%= session.getAttribute("age") %>
<hr>
<a href="logout.jsp">로그아웃</a>
</body>
</html>