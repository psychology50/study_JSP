<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
	request.setAttribute("ID", "kingdora@kings.com");
	request.setAttribute("name", "김개동");
%>

<jsp:forward page="forwardTo.jsp" />
