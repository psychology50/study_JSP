<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
    
<%
String names[] = {"프로토콜 이름", "서버이름", "Method 방식", 
	 			  "컨텍스트 경로", "URI", "접속한 클라이언트 IP"};
String values[]={request.getProtocol(),   // 웹 서버로 요청 시, 사용 중인 프로토콜을 리턴한다.
				 request.getServerName(), // 웹 서버로 요청 시, 서버의 도메인 이름을 리턴한다.
				 request.getMethod(),	  // 웹 서버로 요청 시, 요청에 사용된 요청 방식(get, post 등)을 리턴한다.
				 request.getContextPath(), // 해당 jsp 페이지가 속한 웹 애플리케이션의 컨택스트 경로를 리턴한다.
				 request.getRequestURI(),  // 웹 서버로 요청 시, 요청에 사용된 URL로 부터 URI의 값을 리턴한다.
				 request.getRemoteAddr()}; // 웹 서버로 정보를 요청한 웹 브라우저의 호스트 이름을 리턴한다.
				 /*
				 	[URL과 URI]
				 	URL(Uniform Resource Locator)은 웹상에서 서비스를 제공하는 각 서버들이 제공하고 있는 파일들의 위치를 명시하기 위한 것이다.
				 	따라서 URL에는 접속해야 할 서비스의 종류, 도메인명, 파일의 위치가 포함된다.
				 	URI(Uniform Resource Identifier)는 URL로 부터 존재하는 자원을 식별하기 위한 일반적인 식별자를 규정하기 위한 것이다.
				 	따라서 URI는 URL에서 HTTP 프로토콜, 호스트명, port 번호를 제외한 부분이 된다.
				 	예를 들어, URL이 http://127.0.0.1:8080/study/ch04/resourceTest1.jsp 라면
				 	URI는 study/ch04/resourceTest1.jsp가 된다.
				 */
Enumeration<String> en = request.getHeaderNames(); // 요청 헤더의 모든 정보를 얻어낸다.
/*
	[Enumeration 객체]
	java.util.Enumeration 인터페이스는 객체를 저장하는 객체(컬렉션)로, 저장된 객체를 모두 Object 타입으로 저장한다.
	주로 사용하는 메서드는 다음과 같다.
	boolean hasMoreElements() : 더이상의 객체가 있는 지 없는 지를 판단하여 객체가 있으면 true, 없으면 false 값을 리턴한다.
	Object nextElement() : 다음 객체를 가져오는 메서드로, 이때 Object 타입으로 받아 놓은 객체를 원래의 객체 형태로 Casting하여 사용한다.
*/
String headerName = "";
String headerValue = "";

%>
	     
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <title>JSP 입문</title>
</head>
<body>	 
	 <h2>웹 브라우저와 웹 서버 정보 표시</h2>
	 <%
	 for(int i=0; i<names.length; i++) {
		 out.println(names[i] + " : " + values[i] + "<br>");
	 }
	 %>
	 
	 <h2>헤더의 정보 표시</h2>
	 <%
	 while(en.hasMoreElements()) {
		 headerName = en.nextElement();
		 headerValue = request.getHeader(headerName);
		 out.println(headerName + " : " + headerValue + "<br>");
	 }
	 %>
	 
	 
</body>
</html>
