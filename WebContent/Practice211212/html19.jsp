<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
<meta charset="UTF-8">
<title>JSP입문</title> <!-- 문서 제목 -->
</head>
<body>
	<h2>type="hidden"-히든 필드 만들기</h2>
	<!-- <input type="hidden" name="이름" value="서버로 넘길 값"> -->
	<form action="html18.jsp" method="get"> <!-- get일 경우 날아가는 값이 보인다. post는 보이지 않는다. -->
		<label>주소창을 잘 보세요!</label> 
		<input type="hidden" name="agrement" value="Y">
		<input type="submit" value="전송">
		
		
	</form>
	
</body>
</html>