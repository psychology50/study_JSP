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

 <jsp:useBean id="testBean" class="ch10.bean.TestBean">
 	<jsp:setProperty name="testBean" property="*"/> <!-- bean에 있는 자바 변수에 getter/setter로 1:1 대응하여 값이 세팅된다. -->
 </jsp:useBean>
 
 입력된 id는 <jsp:getProperty name="testBean" property="id"/> 입니다. <br>
 입력된 나이는 <jsp:getProperty name="testBean" property="age"/> 입니다. <br>
 입력된 이름은 <jsp:getProperty name="testBean" property="name"/> 입니다. <br>
	
</body>
</html>