<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% response.setStatus(HttpServletResponse.SC_OK); %>
<!--
 현재 페이지가 정상적으로 응답되는 페이지임을 지정하는 코드이다.
 이 코드가 생략되면 웹 브라우저는 자체적으로 제공하는 화면을 표시한다. 
 -->    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404 error</title>
</head>
<body>
	요청하는 페이지는 존재하지 않습니다.
	<!--에러 페이지에 이미지를 표시할 때는 절대 경로를 이용한다. -->
	<img src="C:/Users/qud12/eclipse-workspaceE/StudyBasicJSP/WebContent/error/img/404.jpg">

</body>
</html>