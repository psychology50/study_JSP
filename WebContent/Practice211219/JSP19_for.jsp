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
	<h2>권역을 선택하세요</h2>
	
	<%
		String strArray[] = {"JAVA", "JSP", "Android", "HTML5"};
	
		for(int i=0; i<strArray.length;i++) {
			out.println("strArray[" + i + "]의 값은 : " + strArray[i] + "<br>");
		}
	%>
	
</body>
</html>