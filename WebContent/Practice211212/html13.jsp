<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
<meta charset="UTF-8">
<title>JSP입문</title> <!-- 문서 제목 -->
</head>
<body>
	<!-- form 태그 : 하나의 객체라고 생각하면 된다. 그렇기 때문에 속성값 중에 method(get, post), name, action, target이 있다. -->
	<!-- 다만 get 방식은 잘 쓰이지 않는다. (get으로 정보를 입력받으면 주소 창에 모두 노출되서 보안성이 취약해진다. 메서드를 생략하면 get이 쓰인다.) -->
	<h2>from 사용하기(일반 입력창)</h2>
<!-- <form action = "처리할 페이지 주소" method="get|post></form> -->
	<form action = "/examples/media/request.php">
		<label>이름을 입력하세요 : </label>
		<input type="text" name="search"> <!-- type의 속성이 text인 경우 텍스트를 입력받는 입력창이 생긴다. -->
	</form>
	<hr>
	
	<h2>form 사용하기(비밀번호 입력창)</h2>
	<form>
		ID : <br><input type="text" name="id"><br>
		PW : <br><input type="password" name="password">
	</form>
	<hr>
</body>
</html>