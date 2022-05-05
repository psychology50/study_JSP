<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String name = (String)request.getParameter("name");
	String color = (String)request.getParameter("color");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=name %>님이 선호하시는 색상은 <%=color %>입니다.
	<div style="width:10px; height:5px; background-color:<%=color%>;">
	</div>
</body>
</html>