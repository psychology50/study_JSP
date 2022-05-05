<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <style>
    * {
    	margin: 0;
    	padding: 0;
    }
    li {
    	display: inline;
    	list-style-type: none;
    }
    </style>
    
    <title>JSP 입문</title>
</head>
<body>	 
<!-- 
[Action tag]
: 페이지와 페이지 사이 제어를 이동시킬 수 있고, 다른 페이지 실행 결과를 현재 페이지에 포함 시킬 수도 있음.

[메서드]
* 구조 >> jsp:메서드

1. include : 다른 페이지 실행결과를 현재 페이지에 포함
2. forward : 페이지 사이의 제어를 이동
3. plug-in : 웹 브라우저에서 자바 애플릿을 실행시킬 때 사용
4. useBean : 자바빈을 JSP페이지에서 사용할 때
5. setProperty : 프로퍼티 값을 세팅
6. getProperty : 프로퍼티 값을 얻어낼 때
	
include 디렉티브는 주로 조각코드를 삽입할 때 사용되고, include 액션 태그는 페이지를 모듈화 할 때 사용.
모듈화란? >> 네비게이션바를 눌렀을 때, 페이지 이동이 아니라 하단 메뉴만 바뀌는 기능들.
-> 즉, 중복되는 상단, 슬라이더, 하단은 그대로 두고 내용만 바뀌는 기능을 만들 수 있다.

[사용법]
jsp:include page="포함될 페이지" flush="false"/>
- flush 속성: 

<%--
[값 전달하기]
jsp:include page="b.jsp" flush="false"> * param을 안 쓸 거면 /로 닫아야 한다.   
	<jsp":param name="p1" value="<%=var%>">
</jsp:include>
--%>

-->

<!-- 
include 액션태그는 include 디렉티브와 함께 다른 페이지를 현재 페이지에 포함시킬 수 있는 기능을 가지고 이싿.
그러나 include 디렉티브는 단순하게 소스의 내용이 텍스트로 포함된다. (코드를 복사해서 함께 서블릿으로 변환한다.)
include 액션태그는 포함시킬 페이지의 처리 결과를 포함시킨다는 점에서 include 디렉티브와는 다르다.
포함되는 페이지는 HTML, JSP, Servlet 페이지 모두 가능하다.
include 액션태그와 include 디렉티브는 처리 방식도 다르지만 사용방식도 다르다.
include 디렉티브는 주로 조각코드를 삽입할 때 사용되고,
include 액션태그는 페이지를 모듈화 할 때 사용된다. 즉, 템플릿 페이지를 작성할 때 사용된다.

 -->

	<h2>include 액션태그</h2>

	<form method="post" action="JSP30_include2.jsp">
		이름: <input type="text" name="name"><br>
		페이지 이름: <input type="text" name="pageName" value="JSP29_included">
		<input type="submit" value="입력완료">

	</form>



	
</body>
</html>











