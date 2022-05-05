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
	<!-- 
		application 내장객체는 웹 애플리케이션의 설정 정보를 갖는 context와 관련이 있는 객체로 웹 애플리케이션과 연관이 있다.
		application 객체는 웹 애플리케이션이 실행되는 서버의 설정 정보 및 자원에 대한 정보를 얻어내거나,
		애플리케이션이 실행되고 있는 동안에 발생할 수 있는 이벤트 로그 정보와 관련된 기능들을 제공한다.
		주로 웹 사이트의 방문자 기록을 카운트 할 때 사용된다.
	 -->
	 <h2>application 내장객체</h2>
	 <%
	 	String info = application.getServerInfo(); // 웹 컨테이너의 이름과 버전을 얻어낸다.
	 	String path = application.getRealPath("/"); // 웹 어플리케이션 루트에 대한 로컬 상의 실제 경로를 얻어낸다.
	 										// "/" : 제일 위의 최상위 경로를 지정한다.
	 	application.log("로그 기록 : "); //[Console]뷰에 표시된다.
	 %>
	 
	 웹 컨테이너의 이름과 버전 : <%=info %> <br>
	 웹 어플리케이션 폴더의 로컬 시스템 경로: <%=path %>
	 
</body>
</html>
