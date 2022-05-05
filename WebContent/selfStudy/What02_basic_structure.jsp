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
[2] JSP의 기본 구조
    : 3개의 스크립트 + HTML + 내장 객체로 구성된다.
    1. Script
       (1) 선언문 <%-- ( <%! %> ) --%>
           · 전역 변수 선언 및 메서드 선언에 사용
           · 서블릿을 변환 시, Class 상단에 위치한다.
       (2) 스크립틀릿 <%-- ( <% %> ) --%>
       	   · 프로그래밍 코드를 기술한다.
       (3) 표현식 <%-- ( <%= %> ) --%>
           · 화면에 출력할 내용을 기술할 때 사용한다.
    2. 내장 객체
       (1) def. jsp가 서블릿으로 변환될 때, 자동으로 추가되는 java 객체로써 jsp 프로그램을 좀 더 편리하게 해준다.
       (2) kinds
           · 내장 객체 (참조 변수 이름) : request            
           	  자바 클래스 : javax.servlet.http.HttpServletRequest         	  
           	  주요 역할 : HTML Form 요소 선택 값과 같은 사용자 입력 정보를 읽어올 때 사용한다.
           	  
           · 내장 객체 (참조 변수 이름) : response           
           	  자바 클래스 : javax.servlet.http.HttpServletResponse  	  
           	  주요 역할 : 사용자 요청에 대한 응답을 처리할 때 사용한다.
           	  
           · 내장 객체 (참조 변수 이름) : pageContext          
           	  자바 클래스 : javax.servlet.jsp.PageContext    	  
           	  주요 역할	: 현재 JSP 실행에 대한 context 정보를 참조하기 위해 사용한다.
           	  		
           · 내장 객체 (참조 변수 이름) : session
           	  자바 클래스 : javax.servlet.http.HttpSession
           	  주요 역할 : 클라이언트 세션 정보를 처리하기 위해 사용한다.		
           	  	
           · 내장 객체 (참조 변수 이름) : application
           	  자바 클래스 : javax.servlet.ServletContext
           	  주요 역할 : 웹 서버의 애플리케이션 처리와 관련된 정보를 참조하기 위해 사용한다.		
           	  	
           · 내장 객체 (참조 변수 이름) : out
           	  자바 클래스 : javax.servlet.jsp.JspWriter
           	  주요 역할 : 사용자에게 전달하기 위한 output 스트림을 처리하기 위해 사용한다.
           	  	
           · 내장 객체 (참조 변수 이름) : config
           	  자바 클래스 : javax.servlet.ServletConfig
           	  주요 역할 : 현재 JSP에 대한 초기화 환경을 처리하기 위해 사용한다.		
           	  	
           · 내장 객체 (참조 변수 이름) : page
           	  자바 클래스 : javax.servlet.HttpJspPage
           	  주요 역할 : 현재 JSP 페이지에 대한 클래스 정보		
           	  	
           · 내장 객체 (참조 변수 이름) : exception
           	  자바 클래스 : javax.lang.Throwable
           	  주요 역할 : 예외 처리를 위해서 사용한다.
           	  
           *** Q. 내장 객체들은 선언문에서 사용 가능한가? A. 불가능하다.
           ***    >>> 내장객체는 Servlet의 Service 메서드 안에 이미 선언되어 있다.
           			    선언문은 service method 밖에서 코드가 생성되어 사용되기 때문에,
           			  service method에서 선언된 내장 객체를 사용할 수 없다. 
           	  
           	  			
 -->
</body>
</html>