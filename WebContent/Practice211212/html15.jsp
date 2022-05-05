<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
<meta charset="UTF-8">
<title>JSP입문</title> <!-- 문서 제목 -->
</head>
<body>
	<h2>여러줄의 글을 입력 받는 <strong>TEXTAREA</strong></h2>
	<textarea name="message" rows="5" cols="30">
	</textarea>
	<hr>
	
	<h2>일반 버튼</h2>
	<button type="button" onclick="alert('버튼을 클릭하셨군요!')">
		버튼 클릭!
	</button>
	
	<h2>전송 버튼</h2>
		<form action="html14.jsp"> <!-- action에 아무 것도 없으면 자기 자신이 뜬다. -->
			가장 좋아하는 가수를 적어 주세요 : <br>
			<input type="text" name="singer" value="BTS"><br><br>
			<input type="submit" value="전송">
		</form>
	
</body>
</html>