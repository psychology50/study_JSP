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
	<h2>예제</h2>
	
	<%!
		String name = "양재서";
		String getName() {
			return name;
		}
	%>
	<%
		String hobby = "코딩";
	%>
	
	제 이름은 <%=getName()%>이고,<br>
	제 취미는 <%=hobby%>입니다.
	
	
	
	
</body>
</html>