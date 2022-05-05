<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="register" class="ch10.bean.RegisterTestBean">
		<jsp:setProperty name="register" property="*" />
	</jsp:useBean>
	
이름: <jsp:getProperty property="name" name="register"/><br>
아이디: <jsp:getProperty property="id" name="register"/><br>
비밀번호: <jsp:getProperty property="pw" name="register"/><br>
비밀번호 확인: <jsp:getProperty property="pw2" name="register"/><br>
생일: <jsp:getProperty property="year" name="register"/>-
	 <jsp:getProperty property="month" name="register"/>-
	 <jsp:getProperty property="day" name="register"/><br>
성별: <jsp:getProperty property="gender" name="register"/><br>
우편번호: <jsp:getProperty property="addr1" name="register"/>
	    <jsp:getProperty property="addr2" name="register"/><br>
집주소: <jsp:getProperty property="addr_home1" name="register"/>
상세주소: <jsp:getProperty property="addr_home2" name="register"/><br>
연락처: <jsp:getProperty property="phone1" name="register"/>-
	   <jsp:getProperty property="phone2" name="register"/>-
       <jsp:getProperty property="phone3" name="register"/><br>
이메일: <jsp:getProperty property="eMail1" name="register"/>
	  <jsp:getProperty property="eMail2" name="register"/><br>
회사전화: <jsp:getProperty property="office_phone1" name="register"/>-
		<jsp:getProperty property="office_phone2" name="register"/>-
		<jsp:getProperty property="office_phone3" name="register"/><br>
회사주소: <jsp:getProperty property="office_addr1" name="register"/>, 
		<jsp:getProperty property="office_addr2" name="register"/>, 
		<jsp:getProperty property="office_addr3" name="register"/><br>
휴대폰: <jsp:getProperty property="userPhone1" name="register"/>
	  <jsp:getProperty property="userPhone2" name="register"/>
	  <jsp:getProperty property="userPhone3" name="register"/><br>
뉴스메일: <jsp:getProperty property="news" name="register"/><br>
SNS: <jsp:getProperty property="sns" name="register"/><br>
	
</body>
</html>