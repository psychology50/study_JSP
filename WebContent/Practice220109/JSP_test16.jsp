<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <style>
    * {
    	margin: 0;
    	padding: 0;
    }
    li {
    	display: inline;
    	list-style-type: none;
    }
    </style>
    
    <title>JSP 입문</title>
</head>
<body>	 
	<h2>정보를 입력 하세요.</h2>
	<form method="post" action="JSP_test16_Pro.jsp">
		학번: <input type="text" name="num" required><br>
		이름: <input type="text" name="name" placeholder="홍길동" required><br>
		전공:
		<select name="major">
			<option disabled>==선택==</option>
			<option value="기계공학과">기계공학과</option>
			<option value="화학공학과">화학공학과</option>
			<option value="전자공학과">전자공학과</option>
		</select>
		<ul>
			<li>
				취미:<input type="checkbox" name="document" value="잠자기"> 잠자기		
			</li>
			<li>
				<input type="checkbox" name="document" value="게임"> 게임
			</li>
			<li>
				<input type="checkbox" name="document" value="수영"> 수영
			</li>
		</ul>
		
		<input type="submit" value="등록">
		<input type="reset" value="다시쓰기">
	</form>
	
</body>
</html>
