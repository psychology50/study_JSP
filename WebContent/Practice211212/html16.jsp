<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
<meta charset="UTF-8">
<title>JSP입문</title> <!-- 문서 제목 -->
</head>
<body>
	<h2>form 요소와 관련된 데이터 둘을 하나로 묶어주는 fieldset</h2>
	<form action="http://www.naver.com">
	<fieldset>
		<legend>개인 정보</legend> <!-- legend는 필드셋 안에서만 사용 가능하다. 제목을 나타냄. -->
			<label for="name">이름 :</label><br>
			<input type="text" name="username"><br>
			<label for="email">이메일 :</label><br>
			<input type="text" name="email"><br><br>
	</fieldset>
	<fieldset>
		<legend>로그인 정보</legend> <!-- legend는 필드셋 안에서만 사용 가능. 제목을 나타낸다. -->
		아이디: <br>
			<input type="text" name="username"><br>
		비밀번호: <br>
			<input type="password" name="email"><br><br>
	</fieldset>
	</form>
	
	
</body>
</html>