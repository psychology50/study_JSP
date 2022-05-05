<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <title>JSP 입문</title>
	
</head>

<body>
	<h2>스크립틀릿과 선언문에서 선언된 변수의 차이점</h2>
	
 	<%! // 선언문 - 전역변수 선언
 		String str = "전역변수 입니다.";
 	%>
 	
 	<%! // 선언문 - 메서드 선언
 		String getStr() {
 		return str;
 		}
 	%>
 	
 	<% // 스크립틀릿
 		String str2 = "지역변수 입니다.";
 	%>
 	
 	스크립틀릿에서 선언한 변수 str2는 <%=str2 %><br> <!-- 표현식 -->
 	선언문에서 선언한 변수 str1은 <%=getStr() %> <!-- 표현식 -->

	
</body>
</html>