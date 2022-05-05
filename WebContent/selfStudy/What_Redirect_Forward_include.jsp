<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
페이지 이동의 3종류

[1] Page Move
 	1. category
 	   (1) redirect
 	   	   a. 클라이언트의 요청에 대한 HTTP 응답을 나타내는 response Object's method
 	   	   b. form : <%-- <% response.sendRedirect("이동할 페이지.jsp"); %> --%>
 	   	   c. feature
 	   	      · redirect로 이동한 페이지는 전혀 데이터를 공유하거나 주고 받는 것이 없다.
 	   	      · redirect를 하면 이도할 페이지로 요청과 응답 객체를 새로 생성하여 전송한다.
 	   	      · redirect는 페이지를 재요청하는 것이며, URL을 확인하면 이동한 jsp 파일의 이름으로 변경됨을 확인할 수 있다.
 	   (2) forward
 	   	   a. 다른 내장 객체를 얻어내거나 현재 페이지의 요청과 응답의 제어권을 다른 페이지로 넘겨주는 pageContext Object's method
 	   	   b. form : <%-- <% pageContext.forward("이동할 페이지.jsp"); %> --%>
 	   	   c. feature
 	   	      · 현재 페이지의 요청과 응답에 관한 제어권을 URL로 지정된 주소(매개변수)로 영구적으로 넘긴다.
 	   	      · forwarding된 페이지의 요청 처리가 종료되면 응답도 종료된다.
 	   	      · redirect처럼 페이지 재요청이 아닌 method를 호출하는 것과 같다.
 	   	      · 서버가 자동으로 이동 시켜줌으로써 URL은 유지되고 데이터만 옮겨진다. (=data share & maintain)
 	   	      · 사용방법
 	   	        - jsp action tag : <%-- <jsp:forward page="페이지명"> --%>
 	   	        - built-in Object : <%-- <% pageContext.forward("페이지명"); %> --%>
 	   	        - Servlet : <%-- RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
 	   	        				 dispatcher.forward(request, response); --%>  	   
 	   (3) include
		   a. 다른 내장 객체를 얻어내거나 현재 페이지의 요청과 응답의 제어권을 다른 페이지로 넘겨주는 pageContext Object's method
		   b. form : <%-- <% pageContext.include("이동할 페이지.jsp"); %> --%>
 	   	   c. feature
 	   	      · 현재 페이지의 요청과 응답에 관한 제어권을 URL로 지정된 주소(매개변수)로 '일시적'으로 넘긴다.
 	   	        >>> include된 페이지의 처리가 끝나면 다시 제어권은 원래 페이지로 되돌아 온다.

 -->
</body>
</html>