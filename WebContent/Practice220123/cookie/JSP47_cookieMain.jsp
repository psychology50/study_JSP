<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = "";
	try {
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(int i=0; i<cookies.length; i++) {
				if(cookies[i].getName().equals("id"))
					id = cookies[i].getValue();
			}
			if(id.equals(""))
				response.sendRedirect("JSP47_cookieLoginForm.jsp");
		} else
			response.sendRedirect("JSP47_cookieLoginForm.jsp");
		
	} catch(Exception e) {}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습</title>
</head>
<body>
	<b><%= id %></b>님이 로그인 하셨습니다.
	<form method="post" action="JSP47_cookieLogout.jsp">
		<input type="submit" value="로그아웃">
	</form>
</body>
</html>