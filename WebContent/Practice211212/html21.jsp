<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
<meta charset="UTF-8">
<title>JSP입문</title> <!-- 문서 제목 -->
</head>
<body>
	<h2>progress 태그</h2>
	<label>10초 남음</label>
	<!-- 전체 60초 중 50초 진행 -->
	<progress value="50" max="60"></progress>
	
	<label>진행률 30%</label>
	<!-- 전체 100중 30만큼 진행 -->
	<progress value="30" max="100"></progress>
	
</body>
</html>