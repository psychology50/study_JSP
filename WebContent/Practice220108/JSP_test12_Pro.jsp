<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

<%
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String sub = request.getParameter("sub");
	
%>

학번 : <%=num %><br>
이름 : <%=name %><br>
전공 : <%=sub %>


