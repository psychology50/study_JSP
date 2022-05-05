<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
String id = request.getParameter("id");
String hobby = request.getParameter("hobby");
%>
포워딩되는 페이지 forwardToTest.jsp 입니다.<br>
<b><%=id%></b> 님의 <br>
취미는 <b><%=hobby %></b> 입니다.

<!-- 
	주소 표시줄은 forwardTest.jsp 인데
	내용은 forwardToTest.jsp 페이지의 내용이 표시된다.
 -->






