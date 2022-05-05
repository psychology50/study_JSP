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
[3] Scope
	1. def. 웹 서버에서 객체 또는 변수가 생성된 후 유효할 수 있는 범위를 말한다.
	2. 종류
	   (1) page
	       - scope : 객체를 하나의 페이지 내에서만 공유. pageContext 기본 객체를 사용.
	       - use   : 지역 변수 처럼 활용. JSP에서 사용.
	       - jsp built-in Object : pageContext
	       - servlet Object : x내장 객체
	   (2) request
	       - scope : 공유한 페이지 및 공유 페이지에서 제어권이 이동된 페이지에서 사용 가능.
	       - use   : forward를 통해 데이터를 넘길 때
	       - jsp built-in Object : request
	       - servlet Object : HttpServletRequest
	   (3) session
	       - scope : 현재 컨텍스트의 모든 페이지에서 사용 가능. Web Brower 로그아웃 또는 설정한 시간 동안.
	       - use   : 사용자 별로 정보를 저장할 때. (로그인/로그아웃, 장바구니)
	       - jsp built-in Object : session
	       - servlet Object : HttpServletRequest의 getSession() 메서드를 이용해 session 객체를 얻는다.
	        				  >>> HttpSession session = request.getSession(false);
	   (4) application
	       - scope : 현재 컨텍스트의 모든 페이지에서 사용 가능(Web Application Server 종료 전까지 공유 유지)
	       - use   : 사용자에게 공통적으로 무언가는 보여주고자 할 때.
	       - jsp built-in Object : application
	       - servlet Object : getServletContext();로 얻는다.
	       					  >>> ServletContext application = getServletContext();
	2. Scope's common function
	   (1) void setAttribute(string key, object value);
	       : scope객체에 key, value 형식으로 값을 할당한다.
	         >>> request("today", "220110");
	   (2) Object getAttribute(string key);
	       : scope 객체에서 key값으로 value값을 리턴 받는다.
	         >>> String date = (String)request.getAttribute("today");
	             * Object 형식으로 리턴 됨으로 Type Casting이 필요하다.
	3. 요약
	   Web brower							 WAS(tomcat)
	   								Application 
	       		------- 세션 생성 ----------|--→Session
	       		------Fowarding 요청 -----|-----|--→Request
	       		--------------- 요청 -----|-----|------|--→Page
 -->
</body>
</html>