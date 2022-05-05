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
	<h2>예제</h2>
	<!-- 
		표현식은 JSP 페이지에서 웹 브라우저에 출력할 부분을 표현하기 위한 것이다. 즉, 화면에 출력하기 위한 것이다.
		그러나 스크립틀릿 안에 표현식을 쓸 수 없다. 또한 HTML 태그도 스클립틀릿 안에 쓸 수 없다.
		대신 스크립틀릿 내에서 출력할 부분은 내장 객체인 out 객체의 print() 또는 println() 메서드를 사용하여 출력한다.
	
	 -->
	<%
		//배열의 초기화 블럭을 사용하면 배열의 선언, 메모리 할당, 초기값 설정을 한 번에 할 수 있다.
		String[] str = {"JSP", "JAVA", "Android", "HTML5"};
		int i = (int)(Math.random()*4); // 0~3사이의 값이 임의로 설정된다.		
		
	%>
	<%=str[i]  %>가(이) 재미있다.
</body>
</html>