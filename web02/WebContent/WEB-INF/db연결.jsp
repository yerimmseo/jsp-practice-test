<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
// 스크립트릿: 자바코드가 들어가는 부분
// 릿(let): 작은 프로그램
// 자바에서 db를 연결해보자.
// Java DB connectivity(JDBC) 프로그래밍
// 1. connector 설정
Class.forName("com.mysql.jdbc.Driver");
%>
1. 커넥터 설정 성공<br>
<%
// 2. db연결(url, id, pw)
String url = "jdbc:mysql://localhost:3366/spring";
String user = "root";
String password = "1234";
Connection con = DriverManager.getConnection(url, user, password);
//PrintWriter out = new PrinterWriter();
out.print("2. db연결 성공<br>");

// 3. sql문 생성
String sql = "insert into member values ('summer','win','win','win')";
PreparedStatement ps = con.prepareStatement(sql);
out.print("3. sql문 생성 성공<br>");

// 4. sql문을 mysql서버에 전송
int result = ps.executeUpdate(); // 성공했으면 1, 실패했으면 0
out.print("4. sql문을 mysql서버에 전송 성공<br>");
if (result == 1){
	out.print("회원가입 성공함.@@@@@@@@@@@@@@@");
}else {
	out.print("회원가입 실패함.@@@@@@@@@@@@@@@");
	
}
%>