<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	<form method="post" action="JSP17_ifMultiTestPro.jsp">
	이름 : <input type="text" name="name"><br>
	전화번호 :
		<select name="local">
			<option value="서울">서울</option>
			<option value="경기">경기</option>
			<option value="강원">강원</option>
			<option value="대구">대구</option>
		</select>
	 		<input type="text" name="tel"><br>
	 	<input type="submit" value="입력완료">
	</form>
	
</body>
</html>