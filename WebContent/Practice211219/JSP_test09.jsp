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
	<h2>반복 수행할 숫자를 입력하세요.</h2>
	
	<form method="post" action="JSP_test09_Pro.jsp">
	이름을 입력해주세요 <input type="text" name="name" required><br>
		<select name="color">
			<option value="파란색">파란색</option>
			<option value="초록색">초록색</option>
			<option value="노란색">노란색</option>
			<option value="빨간색">빨간색</option>
		</select>
	 <input type="submit" value="입력완료">
	</form>
	

	
	
</body>
</html>