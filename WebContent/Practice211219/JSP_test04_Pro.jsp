<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

<%
	int num = Integer.parseInt(request.getParameter("number"));

	if (num > 5 && num <= 10) {
		out.println("변수 <b>" + num + "</b>은 5보다 크다." );
	}
	else if (num <= 5 && num >0) {
		out.println("변수 <b>" + num + "</b>은 5이하입니다." );
	}
	else {
		out.println("변수의 크기가 범위를 벗어났습니다.");
	}

%>