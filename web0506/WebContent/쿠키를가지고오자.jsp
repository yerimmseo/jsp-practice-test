<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	Cookie[] list = request.getCookies();
    %>
    	<%= list[0].getName() %> : <%= list[0].getValue() %> <br>
    	<%= list[1].getName() %> : <%= list[1].getValue() %> <br>
    	<%= list[2].getName() %> : <%= list[2].getValue() %> <br>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>