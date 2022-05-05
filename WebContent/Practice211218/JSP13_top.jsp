<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <title>JSP 입문</title>
	
</head>

<body>
	<h2>예제</h2>
	<%
		Timestamp now = new Timestamp(System.currentTimeMillis());
	%>	
	
	top.jsp입니다.<p>
	<%=now.toString() %>
	</p>
</body>
</html>