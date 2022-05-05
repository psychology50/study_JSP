<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "./jspf/color.jspf" %>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <title>JSP 입문</title>
	
</head>

<body>
	<h2>예제</h2>
	
	<body bgcolor = "<%=title_c %>">
	<%
		String name = "Yang";
	%>
	
	<%@ include file = "JSP_test03_top.jsp" %>
       포함되는 페이지 includeDirective.jsp의 내용입니다.
    <%@ include file = "JSP_test03_top.jsp" %>
	
	
	
</body>
</html>