<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
// 입력한 데이터 서버에서 받아주자.!
// id=win&pw=win&name=win&tel=win
String id = request.getParameter("id");
String email = request.getParameter("email");
String car = request.getParameter("car");

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
String sql = "insert into person values (?, ?, ?)";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, id);
ps.setString(2, email);
ps.setString(3, car);

out.print("3. sql문 생성 성공<br>");

// 4. sql문을 mysql서버에 전송
int result = 0;

try {
	result = ps.executeUpdate(); // 성공했으면 1, 실패했으면 0
} catch(Exception e) {
	out.print("db처리 전송 후 에러 발생함.");
}
out.print("4. sql문을 mysql서버에 전송 성공<br>");
con.close();
%>