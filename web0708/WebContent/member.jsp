<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/project.css">
</head>
<body>
<div id="total">
	<div id="top">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div id="top2">
		<jsp:include page="top2.jsp"></jsp:include>
	</div>
	<div id="center">
		<% 
		//id라는 속성의 이름으로 세션이 잡혀져있지 않으면 로그인이 안되었다라고 판단!
		//로그인/회원가입 화면을 보여주어야 함.
		if(session.getAttribute("id") == null) {%>
			<form action="login.jsp">
				<table border="1" bordercolor='red'>
					<tr>
						<td>아이디</td>
						<td><input type="text" name="id"></td>
					</tr>
					<tr>
						<td>패스워드</td>
						<td><input type="text" name="pw"></td>
					</tr>
					
					<tr>
						<td colspan="2">
							<button type="submit">로그인처리</button>
						</td>
					</tr>
				</table>

			</form>
		
		<hr color="blue">
			<h3>회원 가입 정보 입력</h3>
			<form action="member2.jsp">
				<table border="1" bordercolor='red'>
					<tr>
						<td>아이디</td>
						<td><input type="text" name="id"></td>
					</tr>
					<tr>
						<td>패스워드</td>
						<td><input type="text" name="pw"></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td><input type="text" name="tel"></td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="submit">회원가입처리</button>
						</td>
					</tr>
				</table>
			</form>
		<%}else{ %>
			<%= session.getAttribute("id") %>님 환영합니다.<br>
			<a href="logout.jsp">
				<button>로그아웃</button>
			</a>
		<%} %>
		
	</div>

</div>


</body>
</html>