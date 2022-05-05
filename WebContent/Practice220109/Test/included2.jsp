<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
String name = request.getParameter("name");
String pageName = request.getParameter("pageName");

%>
포함되는 페이지 included.jsp입니다.<br>
<b><%=name %></b>님 오셨습니까.
<hr>





