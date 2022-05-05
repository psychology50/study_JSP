<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "./jspf/color.jspf"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <title>JSP 입문</title>
	
</head>

<body>
	<h2>예제</h2>
	<body bgcolor = "<%=bodyback_c %>">
		<form>
			<label for = "id">아이디</label>
			<input type="email" id="id" placeholder="example@aaaa.com" required><br>
			<label for = "pw">비밀번호</label>
			<input type="password" id="pass" placeholder="비밀번호" required><br>
			<label for = "name">이름</label>
			<input type="text" id="name" placeholder="홍길동" required><br>
			<input type="submit" value="등록">
		</form>
		<!-- include 디렉티브는 소스코드를 복사한 후 같이 변환되어 컴파일되지만, 
		  뒤쪽에서 배울 include 액션태그는 포함되는 페이지의 실행 결과만을 삽입한다. 
		  둘의 쓰임은 다르다.
		  반드시 둘다 사용할수 있도록 알아 두어야 한다. 
		-->
</body>
</html>