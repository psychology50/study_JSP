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
	<h2>방명록</h2>
	<form method="post" action="JSP_test15_Pro.jsp">
		이름: <input type="text" name="name" placeholder="홍길동" required><br>
		내용: <input type="text" name="cont" placeholder="내용을 입력하십시오." required><br>
		<input type="submit" value="등록">
		<input type="reset" value="다시쓰기">
	</form>
	
	 
</body>
</html>
