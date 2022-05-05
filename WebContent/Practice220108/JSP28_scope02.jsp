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
	<h2>공유 인스턴스 사용범위</h2>
	
	  <% 
	  	// getAttribute("공유 속성명") : 속성명을 이용하여 인스턴스를 반환하는 메서드
	  	// 반드시 객체 현변환을 해야 한다.
	  	// 공유 속성명이 존재하지 않을 경우 null을 반환한다.
	  	String pageName = (String)pageContext.getAttribute("pageName");
	  	String requestName = (String)request.getAttribute("requestName");
	  	String sessionName = (String)session.getAttribute("sessionName");
//		session.invalidate(); // 실행하면 세션이 null이 된다.
	  	String applicationName = (String)application.getAttribute("applicationName");
	  %>
	  
	  <p>pageName = <%=pageName %></p>
	  <p>requestName = <%=requestName %></p>
	  <p>sessionName = <%=sessionName %></p>
	  <p>applicationName = <%=applicationName %></p>
	  <!-- 
		결과를 보면 세션과 어플리케이션만 출력하였다.
		리퀘스트 form의 action 태그를 사용하지 않아서 공유가 되지 않아서 null을 반환했다.
		page는 하나의 페이지 내에서만 공유가 가능하므로 scope의 pageName은 scope2의 pageName과 공유가 되지 않았다.
		그래서 null을 반환하였다.
	  -->
	  
	 
</body>
</html>
