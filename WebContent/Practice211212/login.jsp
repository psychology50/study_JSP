<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
<meta charset="UTF-8">
<title>JSP입문</title> <!-- 문서 제목 -->
</head>
<body>
	<form action="html19.jsp" method="get">
	<fieldset> <!-- required 옵션을 넣으면 입력창에 아무것도 입력을 하지 않으면 메세지를 출력한다. -->
		<legend>로그인 정보</legend> <!-- palaceholder는 초기 입력값이며 내용을 입력하면 사라진다. -->
		<label for="id">아이디: </label>
		<input type="text" name="id" placeholder="이름을 입력하세요" required>
		<label for="pass">비밀번호: </label>
		<input type="password" name="password" placeholder="비밀번호 입력" required><br>
		
	</fieldset>
	
	<input type="submit" value="로그인">
	<input type="reset" value="다시쓰기">
	</form>	
	
	
</body>
</html>