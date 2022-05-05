<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>member 테이블에 업데이트</h2>
	
	<form method="post" action="JSP43_updatePro.jsp">
		ID: <input type="text" name="id" maxlength="50"><br>
		PW: <input type="password" name="passwd" maxlength="16"><br>
		이름: <input type="text" name="name" maxlength="10"><br>
		<input type="submit" value="입력완료">
	</form>
	
</body>
</html>