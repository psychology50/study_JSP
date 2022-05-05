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
	<h2>include 액션태그</h2>

	<form method="post" action="include2.jsp"> 
		이름: <input type="text" name="name" placeholder="홍길동" autofocus required><br>
		포함할 페이지: <input type="text" name="pageName" value="included2.jsp" autofocus required><br>
		<input type="submit" value="전송">
	</form>
	
</body>
</html>











