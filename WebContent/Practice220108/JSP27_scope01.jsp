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
	<h2>내장 객체의 영역</h2>
	<!-- 
		웹 애플리케이션은 page, request, session, application 이라는 4개의 영역을 가지고 있다.
		내장 객체의 영역은 객체의 유효기간 이라고도 불리며, 객체를 누구와 공유할 것인가를 나타낸다.
	 -->
	 
	 <h3>인스턴스를 공유할 수 있는 내장객체: pageContext, request, session, application</h3>
	 <!-- 
	 	page 영역: 객체를 하나의 페이지 내에서만 공유. pageContext 기본 객체를 사용.
	 	request 영역 : 공유한 페이지 및 공유 페이지에서 제어권이 이동된 페이지에서 사용 가능.
	 				 request 기본 객체를 사용.
	 	session 영역 : 현재 컨텍스트의 모든 페이지에서 사용 가능
	 				  웹 브라우저 당 1개의 session 객체가 생성된다.
	 				  주로 회원관리에서 회원 인증에 사용된다.
	 				 session 기본 객체를 사용한다.
	 	application 영역 : 현재 컨텍스트의 모든 페이지에서 사용 가능(Web Application Server 종료 전까지 공유 유지)
	  -->
	  
	  <%
	  	// pageContext.setAttibute("공유속성명", "공유인스턴스"); -> 공유 속성명을 이용해서 인스턴스를 공유하는 메서드
	  	pageContext.setAttribute("pageName", "페이지");
	  	request.setAttribute("requestName", "리퀘스트");
	  	session.setAttribute("sessionName", "세션");
	  	application.setAttribute("applicationName", "어플리케이션");
	  %>
	  
	  <h3>공유 인스턴스 사용범위</h3>
	  <hr>
	  <%
	  	// getAttribute("공유 속성명") : 속성명을 이용하여 인스턴스를 반환하는 메서드
	  	// 반드시 객체 현변환을 해야 한다.
	  	// 공유 속성명이 존재하지 않을 경우 null을 반환한다.
	  	String pageName = (String)pageContext.getAttribute("pageName");
	  	String requestName = (String)request.getAttribute("requestName");
	  	String sessionName = (String)session.getAttribute("sessionName");
	  	String applicationName = (String)application.getAttribute("applicationName");
	  %>
	  
	  <p>pageName = <%=pageName %></p>
	  <p>requestName = <%=requestName %></p>
	  <p>sessionName = <%=sessionName %></p>
	  <p>applicationName = <%=applicationName %></p>
	  <!-- 결과값을 보면 모든 값이 정상 출력한다. 즉, 모든 객체가 공유되었음을 의미한다. -->
	  
	 
</body>
</html>
