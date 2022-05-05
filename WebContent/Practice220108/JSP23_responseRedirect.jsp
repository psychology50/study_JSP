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
	 response 객체는 웹 브라우저로 응답할 정보를 가지고 있다. 
	 response 객체는 응답 정보와 관련하여 주로 헤더 정보 입력, 리다이렉트 하기 등의 기능을 제공한다.
	 다음의 표는 response 객체에서 자주 사용되는 헤더 정보 입력과 리다이렉트에 관련된 메소드를 표시한 것이다.
	 void setHeader(name, value) : 헤더 정보의 값을 수정하는 메서드로, name에 해당하는 헤더 정보를 value 값으로 설정한다.
	 void setContent(type) : 웹 브라우저 요청의 결과로 보일 페이지의 contentType을 설정한다.
	 void sendRedirect(url) : 페이지를 이동시키는 메서드로, url로 주어진 페이지로 제어가 이동한다.
	 -->
	 <h2>Response 내장 객체 - 리다이렉트 예제</h2>
	 <!-- 
	 이 예제는 responseRedirect.jsp 페이지를 웹 브라우저에 요청하면, sendRedirect() 메서드에 의해
	 responseRedirected.jsp 페이지가 응답되어 화면에 표시되는 예제이다.
	 즉, 웹 브라우저를 통해 요청은 responseRedirect.jsp 페이지가 받고,
	 응답은 responseRedirected.jsp 페이지가 한다. 
	  -->현재 페이지는 <b>responseRedirect.jsp</b> 페이지 입니다.
	  
	 현재 페이지는 <b>responseRedirect.jsp</b> 페이지 입니다.
	 
	 <%
	 	response.sendRedirect("JSP23_responseRedirected.jsp");
	 	// responseRedirected.jsp 페이지로 제어를 이동시킨다.
	 	// 이 때, 출력 버퍼에 저장되는 출력 내용(22, 30 라인)은 출력 버퍼에서 비워지고
	 	// 제어가 이동된 responseRedirected.jsp 페이지의 내용민 출력 버퍼에
	 	// 저장되어 실행한 후 화면에 표시된다.
	 %>
	 
	 <!-- 
	 응답 결과를 보면 responseRedirect.jsp 페이지가 표시되지 않고
	 responseRedirected.jsp 페이지가 화면에 출력된다.
	  -->
</body>
</html>
