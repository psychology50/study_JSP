<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

<%
	String ID = request.getParameter("ID");
	String PW = request.getParameter("PW");
	
	if (ID.equals("abcd") && PW.equals("z1234")) { %>
		로그인에 성공하셨습니다.
<%  } 
	else { %>
		로그인에 실패하셨습니다.
<% 	} %>

