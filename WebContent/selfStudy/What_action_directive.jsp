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
[1] 지시자 태그(Directive tag)
	1. def. JSP 페이지를 어떻게 처리할 것인지 설정. 즉, 전체 JSP 페이지에 적용하는 attibute를 정의한 것이다.
	        JSP 페이지가 Servlet Program에서 서블릿 클래스로 변환할 때, JSP 페이지와 관련된 정보를 tomcat에 지시하는 메시지
	2. category
	   (1) page
	       a. form
	          <%-- <%@page ...%> --%>
	          : JSP 페이지에 대한 정보를 설정한다.
	       b. page 지시자 태그
	          - 현재 JSP 페이지에 대한 정보를 설정
	          - JSP 최상단에 선언하는 것을 권장한다.
	          - <%-- <%@page 속성1="값1" [속성2="값2"...] --%>
	          - attibute
	            · language : 현재 JSP 페이지가 사용할 프로그래밍 언어 설정 		(기본값 Java) 
	            · contentType  : 현재 JSP 페이지가 생성할 문서의 콘텐츠 유형 설정 (기본값 text/html) 
	            · pageEncoding : 현재 JSP 페이지의 문자 인코딩 설정 			(기본값 ISO-8859-1) 
	            · import  : 현재 JSP 페이지가 사용할 자바 클래스를 설정
	            · session : 현재 JSP 페이지의 세션 사용 여부를 설정 (기본값 true) 
	            · buffer  : 현재 JSP 페이지의 출력 버퍼 크기를 설정 (기본값 8KB) 
	            · autoFlush : 출력 버퍼의 동작 제어를 설정 		 (기본값 False) 
	            · isThreadSafe : 현재 JSP 페이지의 멀티스레드 허용 여부를 설정 (기본값 true) 
	            · info : 현재 JSP 페이지에 대한 설명을 설정 
	            · errorPage   : 현재 JSP 페이지에 오류가 발생했을 때 보여줄 오류 페이지를 설정
	            · isErrorPage : 현재 JSP 페이지가 오류 페이지인지 여부 설정 (기본값 false) 
	   (2) include
	   	   a. 형식
	   	   	  <%-- <%@include ...%> --%>
	   	   	  : JSP 페이지의 특정 영역에 다른 문서를 포함한다.
	       b. include 지시자 태그
	          - 현재 JSP 페이지의 특정 영역에 외부 파일의 내용을 포함하는 태그
	            EX) 현재 JSP에 포함할 수 있는 외부 파일(html, jsp, txt)
	          - JSP 페이지 어디든지 선언 가능
	          - <%-- <%@include file = "파일명" %>  --%>
	          - attribute
	            · file 속성 값 : 현재 JSP 페이지에 포함할 내용을 가진 외부 파일명(상대경로)
	            			    정적인 컴파일 과정 file 속성 값으로 외부 문서와 연결
	            			    
[2] 액션 태그(Action tag)
    1. def. 서버나 클라이언트에게 어떤 행동을 하도록 명령하는 태그
    2. func. JSP 페이지에서 페이지와 페이지 사이를 제어한다.
     		  다른 페이지의 실행결과 내용을 현재 페이지에 포함한다. 
	                자바 빈즈(JavaBeans) 등의 다양한 기능을 제공한다.
	3. category
	   (1) forward <%-- <jsp:forward .../> --%> : 다른 페이지로의 이동과 같은 페이지 흐름 제어
	   (2) include <%-- <jsp:include .../> --%> : 외부 페이지의 내용을 포함하거나 페이지 모듈화
	   (3) useBean <%-- <jsp:useBean .../> --%> : JSP 페이지에 자바 빈즈를 설정
	   (4) setProperty <%-- <jsp:setProperty .../> --%> : 자바 빈즈의 프로퍼티 값 설정
	   (5) getProperty <%-- <jsp:getProperty .../> --%> : 자바 빈즈의 프로퍼티 값 얻어 옴
	   (6) param   <%-- <jsp:param .../> --%> : <%-- <jsp:forward>, <jsp:include>, <jsp:plugin> 태그에 인자를 추가 --%>
	4. include action tag
	   (1) def. include directive tag처럼 현재 JSP 페이지의 특정 영역에 외부 파일 내용 포함
	    		but, 사용 방법이 다르고 기능이 추가됨
	   (2) EX. 현재 JSP 페이지에 포함할 수 있는 외부 파일 (HTML, JSP, ServletPage 등)
	   (3) form
	       a. <%-- <jsp:include page="LocalURL" flush="false" /> --%>
	       b. <%-- <jsp:include page="LocalURL" flush="false"  > 
	       				<jsp:param name="" value="<%=value%> "/>
	       		   </jsp:include>
	       	  --%>
	       	  · page attribute  : 현재 JSP 페이지에 포함할 내용을 가진 외부 파일명(상대경로) - 외부 파일과 연결
	       	  · flush attribute : 다른 페이지와 연동을 하는 시점에서 어떻게 출력 버퍼를 처리할 것인지 제어. 기본값은 false
	       	  					  true로 설정하면 현재 JSP 페이지가 지금까지 출력 버퍼에 저장된 내용을 웹 브라우저에 출력 후, 출력 버퍼 제거
	       	  					            			    
[3] include action tag VS include directive tag

       구분						[include action]								      [include directive]
       처리 시간		:	             요청 시, 자원을 포함한다.							jsp 파일을 java 소스로 변환할 때, 자원을 포함한다.
       기능			:		 별도의 파일로 요청 처리 흐름 이동										   현재 페이지에 삽입
       데이터 전달 방법  :  		  request 기본 내장 객체나								  페이지 내의 변수를 선언 후, 변수에 값을 저장
       			    param 액션태그(name, value)를 전달한다.					
       용도			:	 화면 레이아웃의 일부분을 모듈화 할 때 사용한다.			   다수의 JSP 웹 페이지에서 공통으로 사용되는 코드(저작권)같은 문장 포함한 경우
       기타			:			    동적 페이지에 사용 											   정적 페이지에 사용
       예시 형식     	:	<%-- jsp:include page="파일명.jsp"/> --%>				   <%-- <%@include file="파일명.jsp"%> --%>
 -->
</body>
</html>