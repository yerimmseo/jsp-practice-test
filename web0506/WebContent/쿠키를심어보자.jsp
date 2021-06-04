<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //쿠키 객체를 만들어서
    //서버가 브라우저에 보내어 심어보자.
    
    Cookie c1 = new Cookie("name", "honggildong");
    Cookie c2 = new Cookie("age", "100세");
    
    response.addCookie(c1);
    response.addCookie(c2);
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
브라우저에 쿠키를 심었음.<
<hr>
<a href="쿠키를가지고오자.jsp">쿠키를가지고오자</a>





</body>
</html>