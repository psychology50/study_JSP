<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %> 


<%
	int num = Integer.parseInt(request.getParameter("number"));
	if (num < 10) {
		out.println("10보다 작은 값입니다.");
	}
	else {
		out.println("입력하신 값은 <b>" + num + "</b>입니다.");
	}
%>


<!-- 나중엔 이렇게도 쓴다. -->
<%
	int num2 = Integer.parseInt(request.getParameter("number"));
	
	if (num2 <= 10) {
%>
입력받은 숫자는 <%=num2 %>입니다.
<%} %>



