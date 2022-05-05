<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <title>include 디렉티브 연습</title>
	
</head>

<body>
	<h2>예제</h2>
	<!-- 공통적으로 포함될 내용을 가진 파일을 해당 jsp 페이지 내에 삽입하는기능을 제공하는 것이 include 디렉티브이다. -->
    <!-- 포함시킬 파일명을  file 속성의 값으로 기술한다. -->
    <%-- <%@ include file = "포함될 파일의 url" %> --%>
    <%
    	String name = "Kim";
    %>
    
    <%@ include file = "JSP13_top.jsp" %>
       포함되는 페이지 includeDirective.jsp의 내용입니다.
    <%@ include file = "JSP13_top.jsp" %>
    
</body>
</html>