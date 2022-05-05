<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

<%
	
	int num = Integer.parseInt(request.getParameter("number"));
	
	if (num >= 10) {
		out.println("변수 <b>" + num + "</b>은 10보다 크거나 같다." );
	}
	else if (num < 10) {
		out.println("변수 <b>" + num + "</b>은 10보다 작다." );
	}
	

%>