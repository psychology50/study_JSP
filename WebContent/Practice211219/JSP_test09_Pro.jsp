<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

<%
	String name = request.getParameter("name");
	String color = request.getParameter("color");
%>

<h3 id="test" style="width: 500px"><%=name %>님께서 선택하신 색상은 <%=color %>입니다.</h3>

<%  if (color.equals("파란색")) { %>
		<style> #test {background-color: blue;}</style>
<%  } else if(color.equals("초록색")) { %>
		<style> #test {background-color: green;}</style>
<% 	} else if(color.equals("노란색")) { %>
		<style> #test {background-color: yellow;}</style>
<%  } else { %>
		<style> #test {background-color: red;}</style>	
<%  }%>






	



