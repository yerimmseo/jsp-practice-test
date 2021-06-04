<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dto" class="bean.BbsDTO"></jsp:useBean>
    <jsp:setProperty property="*" name="dto"/>
<%
	String id = request.getParameter("id");
	BbsDAO dao = new BbsDAO();
	boolean result = dao.insert(dto);
	if(result){
		response.sendRedirect("bbs.jsp");
	}else{
		out.print("입력 시 문제 발생.!!");
	}
%>