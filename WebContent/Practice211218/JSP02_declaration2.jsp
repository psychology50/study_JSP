<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <title>JSP 입문</title>
	
</head>

<body>
	<h2>스크립틀릿과 선언문에서 선언된 변수의 차이점</h2>
	
 	<%!
 		String str1 = "선언문에서 선언한 변수"; // 멤버 변수
 	%>
 	
 	<%
 		String str2 = "스크립틀릿에서 선언한 변수"; // 지역 변수
 	%>

	
</body>
</html>