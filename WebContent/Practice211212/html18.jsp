<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
<meta charset="UTF-8">
<title>JSP입문</title> <!-- 문서 제목 -->
</head>
<body>
	<h2>maxlength 속성</h2>
	<!-- 입력 필드에 입력할 수 있는 문자의 최대 길이(length)를 설정한다. -->
	<form>
		이름 : <br><input type="text" name="name" value="홍길동" maxlength="10"><br>
		학번 : <br><input type="text" name="id"><br>
	</form>
	<hr>
	
	<h2>size 속성</h2>
	<!-- maxlength 속성과는 달리 입력 필드가 한 번에 보여줄 수 있는 글자의 최대 개수만을 의미한다. -->	
	<form>
		이름 : <br><input type="text" name="student_name" value="홍길동입니다." size="5"><br>
		학번 : <br><input type="text" name="student_id"><br>
	</form>
	
	
</body>
</html>