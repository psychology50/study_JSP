<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 입문</title>
</head>
<body>
	<form method="post" action="JSP39_registerPro.jsp">
		<table border="1">
			<tr>
				<td><label for="id">아이디</label></td>
				<td class="content">
					<input id="idt" name="idt" type="text" size="20"
						   maxlength="30" placeholder = "example@kings.com" autofocus required>
				</td>					
			</tr>
			<tr>
				<td><label>비밀번호</label></td>
				<td>
					<input id="passwd" name="passwd" type="password"
						   size="20" placeholder="6~12자 숫자/문자" maxlength="12" required>
				</td>
			</tr>
			<tr>
				<td><label>이름</label></td>
				<td>
					<input id="name" name="name" type="text"
						   size="20" placeholder="홍길동" maxlength="12" required>
				</td>
			</tr>
			<tr>
				<td class="label2" colspan="2"></td>
			</tr>
			<tr>
				<td><input type="submit" value="회원가입"></td>
				<td><input type="reset" value="다시작성"></td>
			</tr>
		</table>
	</form>
</body>
</html>