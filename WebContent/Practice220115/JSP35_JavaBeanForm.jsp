<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<%-- 
[1] 자바빈
	1. purpose
	   : 화면 표시 담당 JSP페이지와 실제 프로그램 처리하는 로직을 분리하는 클래스
	   	 로직을 처리하는 부분을 JSP 페이지 내에서 따로 추출하여 별도의 자바 파일로 작성하는 것
	2. use
	   a. package 패키지명; // 없으면 생략 가능
	   b. import 패키지명을 포함한 클래스의 풀네임
	   c. class 클래스명 {}
	3. 작성
	   · setter/getter 메서드 : 프로퍼티의 값을 저장하고 얻어내는 메서드, 접근 제어자는 public 사용
	   · 보안 때문에 쓴다.
	   · 자바 빈에서는 멤버 변수를 프로퍼티(property)라고도 부른다.
	   · 멤버변수 : 접근제어자는 private 사용
	   · 클래스 선언 : 접근 제어자를 public을 사용한다.		
	4. 액션태그 <jsp: ... >
	   · 생성 : useBean 액션태그
	   · 값 저장 : setProperty
	   · 값 호출 : getProperty
	   
	   ex) <jsp:useBean id="..." class="..." scope="..."/>
	   	   <jsp:setProperty name="..." property="..." value="..."/>
	   	   <jsp:getProperty name="..." property="..."/>
	5. 자바빈과 useBean 액션태그 연동
		<jsp:useBean id ="빈 이름" class="자바빈 클래스 이름" scope="범위"/>
		 · id: 자바빈 객체(인스턴스)의 이름
		 · class 속성 : 생성될 객체의 클래스명 기술 (필수항목)
		 · scope : page ... 등등
		<jsp:setProperty name"빈 이름" property="프로퍼티 이름" value="저장할 값"/>
		 · name : 자바빈 객체 이름 저장. 객체 이름을 쓴다.
		 · property : 
		 · value : 
		 
    6. jsp와 javaBean
       (1) javaBean
       	   public void setId(String id) {
       	   }
       (2) jsp
           <jsp:useBean ... >
 --%>
 
<h2>이름을 작성해주세요</h2>
<!-- 
자바빈 작성 시, 톰켓 서버를 내린다. 자바빈 클래스를 포함한 로직코드를 수정할 경우 톰켓 서버의 재기동이 필요하기 때문이다.
패키지 명은 xx.xx 처럼 2단계 이상으로 주는 것이 권장 사항이다.
-->

<form method="post" action="JSP35_JavaBeanPro.jsp">
	이름: <input type="text" name="name"><br>
	<input type="submit" value="입력완료">
</form>
 
 
 
	
</body>
</html>