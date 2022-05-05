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
	내장객체: 필수적으로 사용되는 9개의 객체를 객체 생성 없이 바로 사용할 수 있도록 제공함.
			JSP페이지에서 사용하는 특수한 레퍼런스 타입의 변수는 선언과 객체 생성 없이 사용 할 수 있음.
	
	1. request : 웹 브라우저 요청 정보를 저장하고 있는 객체
	2. response : 웹 브라우저의 요청에 대한 응답 정보를 저장하고 있는 객체
	3. out : JSP페이지 출력할 내용을 가지고 있는 출력 스트림 객체이다.
	4. session : 하나의 웹 브라우저 내에서 정보를 유지하기 위한 세션 정보를 저장하고 있는 객체
	5. application : 웹 애플리케이션 Context의 정보를 저장하고 있는 객체
	6. pageContext : JSP페이지 대한 정보를 저장하고 있는 객체
	7. page : JSP 페이지를 구현한 자바 클래스 객체
	8. config : JSP 페이지 대한 설정정보를 저장하고 있는 객체이다.
	9. exception : JSP페이지에서 예외가 발생한 경우에 사용되는 객체이다.
	* 리턴 타입도 찾아볼 것
	
	속성 값을 저장할 수 있는 정보는 객체를 통해서 전달할 수 있게 해준다
	
	[attribute 메서드]
	1. setAttribute(String key, Object value) : void
	2. getAttributeNmaes() : java.util.Enumeration
	3. getAttribute(String key) : Object
	4. removeAttribute(String key) : void	
	
	[request 객체에서 사용자의 요구사항을 얻어내는 요청 메서드]
	1. getParameter(name) : String
	2. getParameterValues(name) : String[]
	3. getParameterNames() : Enumeration
	
	[Port]
	: 데이터가 전달되는 접점
	1. HW port : 마우스 포트, 키보드 포트, 인테넛 포트...잭을 꽂는 곳
	2. SW port : 웹 서버와 웹 브라우저, 프로그램들을 연결해주는 플러그 역할을 하는 것들 
				 포트 번호는 컴퓨터가 어디에 연결할 지 정보를 알려준다.
				 "논리적 접속 장소를 알려주는 이정표"
				 ex) HTTP (웹 페이지 전송 프로토콜) : 80 port
				 
	 -->
	 
	 <!-- 
	 request 객체는 웹 브라우저에서 jsp 페이지로 전달되는 정보의 모임으로 http 헤더와 http 바디로 구성되어 있다.
	 다음의 표는 request 객체에서 사용자의 요구사항을 얻어내는 요청 메소드들이다.
	 String getParameter(name) : 파라미터 변수 name에 저장된 변수값을 얻어내는 메소드로,
	 							 파라미터 변수 name에 해당하는 변수명이 없으면 null을 리턴한다.
	 String[] getParameterValues(name) : 파라미터 변수 name에 저장된 모든 변수값을 얻어내는 메소드로,
	 									 이때 변수의 값은 String 배열로 리턴된다. checkbox로 주로 사용된다.
	 Enumeration getParameterNames() : 요청에 의해 넘어오는 모든 파라미터 변수를 java.util.Enumeration 타입으로 리턴한다.
	 								   변수가 가진 객체들을 저장해야 하므로 컬렉션인 Enumeration 타입을 사용했다.
	 
	  -->
	 
	 <h2>학번, 이름, 학년, 선택 과목을 입력하는 폼</h2>
	 <form method="post" action="JSP21_request01_Pro.jsp">
	 	학번: <input type="text" name="number" autofocus required><br>
		이름: <input type="text" name="name" required><br>
		학년: 
		<ul style="list-style-type: none;">
			<li>
				<input type="radio" name="document" value="1" checked> 1학년	
			</li>
			<li>
				<input type="radio" name="document" value="2"> 2학년
			</li>
			<li>
				<input type="radio" name="document" value="3"> 3학년
			</li>
			<li>
				<input type="radio" name="document" value="4"> 4학년
			</li>
		</ul>
		선택과목:
		<select name="sub">
			<option value="java">JAVA</option>
			<option value="jsp" selected>JSP</option>
			<option value="html">HTML</option>
		</select> 
		 <input type="submit" value="입력완료">
	 
	 </form>
	 
	 
</body>
</html>
