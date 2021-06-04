<%@page import="bean.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    //import: 컨트롤+쉬프트+m
    	MemberDAO dao = new MemberDAO();
    	ArrayList<MemberVO> list = dao.list();
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>전체 인원은 <%= list.size() %>명</h3>
<hr color="red">
<% for(MemberVO vo: list){ %>
아이디: <%= vo.getId() %><br>
패스워드: <%= vo.getPw() %><br>
제목: <%= vo.getName() %><br>
전화: <%= vo.getTel() %><br><br>
<% } %>
</body>
</html>





