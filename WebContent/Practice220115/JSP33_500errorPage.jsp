<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 입문</title>
</head>
<body>
	<!-- 
	[에러]
	
	1. 404 : 찾으려는 파일이 없는 경우
	2. 500 : 서블릿이나 jsp 코드가 잘못된 경우
	
	3. 200 : 에러 없이 잘 전송됐을 경우
	
	web.xml에 <error-page> 태그 기술
	1. <error-code> : 처리할 에러코드 기술
	2. <location>   : 에러 처리 페이지의 위치를 기술
	
	[사용 예제]
	
	<error-page>
		<error-code>404</error-code>
		<location>/error/404code.jsp</location>
	</error-page>
	 -->
	 
<%
	Date date = new Date();
	SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-mm-dd");
	String strdate = simpleDate.format(date);
%>
	 보통의 JSP 페이지의 형태입니다. <br>
	 
	 <%-- 고의로 에러를 발생시킨 라인으로 strdate 변수변을 틀리게 입력하였다. --%>
	 
	오늘 날짜는 <%=strdat %>입니다.
	<!-- 결과를 보면 error 페이지에서 error을 처리한다. -->
	 
	 
</body>
</html>