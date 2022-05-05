<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
	<form method="post" action="deletePro.jsp">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" maxlength="20" required></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw" maxlength="20" required></td>
			</tr>
		</table>
		<input type="submit" value="게정삭제">
	</form>
</body>
</html>