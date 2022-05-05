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
    	list-style-type: none;
    }
    </style>
    
    <title>JSP 입문</title>
</head>
<body>	 
	<h2>다음의 결과가 나오도록 로그를 기록하는 jsp파일 작성</h2>
	<%
		String fileName = request.getRequestURI();
		application.log("My Log : " + fileName + "에서 작성");
	
	%> 
	
</body>
</html>
