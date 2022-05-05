<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
 <% request.setCharacterEncoding("utf-8"); %>
 
 <!-- 
 	아래 코드를 자바 코드와 비교해보자
 	ch10.bean.TestBean testBean = new testBean();
 	testBean.setName(name);
  -->
  
 <jsp:useBean id="testBean" class="ch10.bean.TestBean">
 	<jsp:setProperty name="testBean" property="name"/>
 </jsp:useBean>
 
 <h2>자바빈을 사용하는 JSP 페이지</h2>
 
 <!-- 
 	useBean 액션태그가 위에서 사용되었으므로 testBean 인스턴스가 만들어져 있는 상태이다.
 	test.getName();
  -->
  
  입력된 이름은 <jsp:getProperty name="testBean" property="name" />입니다.
	
</body>
</html>