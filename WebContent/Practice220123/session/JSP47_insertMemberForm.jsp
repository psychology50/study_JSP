<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예제</title>
</head>
<body>
	<form method="post" action="JSP47_insertMemberPro.jsp">
		ID: <input type="text" name="id" maxlength="50" required><br>
		PW: <input type="password" name="passwd" maxlength="16" required><br>
		이름: <input type="text" name="name" maxlength="10" required><br>
		<input type="submit" value="회원가입"/>
		<input type="reset" value="다시입력"/>
	</form>

</body>
</html>