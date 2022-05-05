<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>     
     
<% 
	String spt = "eSports";
	String name = "홍길동";
%>

<jsp:forward page="EX05-01To.jsp">
	<jsp:param name="spt" value="<%=spt%>"/>
	<jsp:param name="name" value="<%=name %>"/>
</jsp:forward>



