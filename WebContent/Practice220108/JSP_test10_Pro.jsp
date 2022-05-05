<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

<%
	int num = Integer.parseInt(request.getParameter("num"));
	int count = Integer.parseInt(request.getParameter("count"));
	int num2 = 1;
%>

<h3 class="test" style="width: auto"><%= num %>을 <%= count %> 횟수만큼 곱한 값은 </h3>

<% 
	while(count > 0) {
	num2 *= num;
	count--;
   }
%>

<h3 class="test" style="width: auto"><%= num2 %>입니다.</h3>


