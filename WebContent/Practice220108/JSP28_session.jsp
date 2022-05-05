<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("kingdora") && pw.equals("1234"))
		session.setAttribute("sessionName", id); // 변수 id의 값을 "id"에 넣는다.
		
	response.sendRedirect("JSP28_sessionForm.jsp");
%>
