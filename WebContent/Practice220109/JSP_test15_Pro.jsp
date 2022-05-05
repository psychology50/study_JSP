<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

<%
	String name = request.getParameter("name");
	String cont = request.getParameter("cont");
%>

이름: <%=name %><br>
내용: <%=cont %><br>





