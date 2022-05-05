<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<%
 session.invalidate(); // 세션의 속성 제거
 response.sendRedirect("JSP28_sessionForm.jsp");
%>