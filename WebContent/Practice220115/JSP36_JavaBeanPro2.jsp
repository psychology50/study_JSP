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
 
<!-- 
	폼에서 넘어 온 파라미터 명과 자바빈 클래스의 프로퍼티 명이 다른 경우
	param 속성을 기술해야 한다.
	param 속성 값에는 폼으로부터 넘어 온 파라미터 명을 기술한다.
	property 속성값에는 자바빈의 변수명을 지정해야 한다.
 -->
 <jsp:useBean id="testBean" class="ch10.bean.TestBean">
 	<jsp:setProperty name="testBean" property="name" param="test"/>
 </jsp:useBean>
 
 입력된 이름은 <jsp:getProperty name="testBean" property="name"/> 입니다.
	
</body>
</html>