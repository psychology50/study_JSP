<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="loginBean" class="ch10.bean.Login">
	<jsp:setProperty name="loginBean" property="*"/>
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이 페이지를 띄울 때, 받은 변수 userid : <%=request.getParameter("userid") %><br>
이 페이지를 띄울 때, 받은 변수 userid : <%=request.getParameter("userpw") %><br>

Bean Class를 활용해 Beans를 만들고, 그 객체 user에 있는 변수 userid
: <jsp:getProperty name="loginBean" property="userid"/><br>
Bean Class를 활용해 Beans를 만들고, 그 객체 user에 있는 변수 userpw
: <jsp:getProperty name="loginBean" property="userpw"/><br>

로그인 체크인 메서드 :
<%
	out.println(loginBean.checkLogin());
%>
</body>
</html>