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
	<h2>out 내장 객체 - out.println()활용</h2>
	<!-- 
		out 객체는 jsp 페이지가 생성한 결과를 웹 브라우저에 전송해주는 출력 스트림이며,
		jsp 페이지가 웹 브라우저에게 보내는 모든 정보는 out 객체를 통해서 전송된다.
		여기서 모든 정보는 jsp 스크립트 요소뿐만 아니라 비 스크립트 요소인 HTML, 일반 텍스트도 모두 포함된다.
		표현식은 스크립틀릿 안에 쓸 수 없다. 대신 스크립틀릿 안에서 어떠한 내용을 웹 브라우저에 출력하고 싶다면
		그 때는 out.println()을 사용해야 하며 가장 많이 쓰이는 메서드이다.
	 -->
	 <%
	 String name = "Kingdora";
	 out.println("출력되는 내용은 <b>" + name + "</b> 입니다.");
	 // 비 스크립트인 일반 텍스트와 html 태그까지도 모두 포함되어 전송된다.
	 %>
	 
	 <h2> 위와 같은 내용 출력 - 표현식 </h2>
	 
	 출력되는 내용은 <b><%= name %></b> 입니다.
</body>
</html>
