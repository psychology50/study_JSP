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
	<h2>정보를 입력하세요</h2>
	
	 <form method="post" action="JSP_test12_Pro.jsp">
		학번: <input type="text" name="num" required><br>
		이름: <input type="text" name="name" required><br>
		전공:
		<select name="sub">
			<option disabled>==선택==</option>
			<option value="전자공학과">전자공학</option>
			<option value="화학공학과" selected>화학공학</option>
			<option value="기계공학과">기계공학</option>
		</select> 
		 <input type="submit" value="확인">
	</form>
	  
	 
</body>
</html>
