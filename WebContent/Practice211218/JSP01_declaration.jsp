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
	<!-- 
		선언문      : <%! %>	 : 전역변수 선언 및 메소드 선언
		스크립트릿 : <%  %>	 : 프로그래밍 코드 기술에 사용
		표현식      : <%= %>	 : 화면에 출력할 내용 기술 (print()처럼)
	 -->
	 
	 <!-- HTML 주석 -->
	 <%-- JSP 주석 : 소스 보기를 해도 보이지 않는다. (보안 향상) --%>
	 
	 <h2>선언문 예제 - 변수선언</h2>
	 <%
	 	String str1 = str2 + " Server Page";
	 %>
	 
	 <%!
	 	String str2 = "Java";
	 %>
	 출력결과 : <%=str1 %>
	 
	 <!--  
	 	str2가 아래쪽에 선언이 되어 있어서 실행하면 에러가 날 것 같지만 에러는 나지 않는다.
	 	왜냐하면, 선언문을 먼저 실행한 뒤 스크립트릿을 실행하므로 에러가 나지 않는다.
	 	그러나 실무에서는 항상 변수를 먼저 선언하고 해당 변수를 참조하는 구조로 작성한다.	 
	  -->
	 
	
</body>
</html>