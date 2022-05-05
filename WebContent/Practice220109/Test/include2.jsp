<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

<%
String name="양재서";
String pageName = "included2.jsp";
%>

포함하는 페이지 include.jsp 입니다.<br>
<hr>

<jsp:include page="<%=pageName %>" flush="false">
	<jsp:param name="name" value="<%=name %>"/>
	<jsp:param name="pageName" value="<%=pageName %>" />
</jsp:include>
include.jsp의 나머지 내용입니다.


