<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String ID = (String)request.getAttribute("ID");
	String name = (String)request.getAttribute("name");
%>

<%=name %>님의 Id는 <%=ID %>입니다.

</body>
</html>