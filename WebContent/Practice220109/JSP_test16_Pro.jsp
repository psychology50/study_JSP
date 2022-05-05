<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

<%
	int num = Integer.parseInt(request.getParameter("num"));
	String name = request.getParameter("name");
	String major = request.getParameter("major");
	String document[] = request.getParameterValues("document");
%>

학번 : <%=num %><br>
이름 : <%=name %><br>
전공 : <%=major %><br>
취미 :
<% 
if(document != null) {
	for(int i = 0; i < document.length ; i++) {
		out.println(document[i] + " ,");
	}
} else {
	out.println("없습니다.");
}
%>




