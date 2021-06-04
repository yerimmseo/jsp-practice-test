<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
 		//내장된 객체로 제공
 		//HttpSession session = new HttpSession();
 		//세션의 속성으로만 지정하면 된다.
 		session.setAttribute("name", "홍길동");
 		session.setAttribute("age", "100세");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
서버에 세션을 심었음.
<hr>
<a href="세션을가지고오자.jsp">세션을가지고오자</a>
</body>
</html>