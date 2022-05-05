<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	session.setAttribute("id", id);
	session.setAttribute("passwd", passwd);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습</title>
</head>
<body>

	id와 passwd 세션속성을 설정하였습니다.<br>
	
	id 속성의 값은
	<%=(String)session.getAttribute("id") %>이고, <br>
	<%=(String)session.getAttribute("passwd") %>입니다.
</body>
</html>