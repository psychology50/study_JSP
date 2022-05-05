<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


 <jsp:useBean id="testBean" class="ch10.bean.ExBean">
 	<jsp:setProperty name="testBean" property="*"/>
 </jsp:useBean>
 
 입력된 id는 <jsp:getProperty name="testBean" property="id"/> 입니다. <br>
 입력된 PW는 <jsp:getProperty name="testBean" property="passwd"/> 입니다. <br>
 입력된 숫자는 <jsp:getProperty name="testBean" property="number"/> 입니다. <br>
	
</body>
</html>