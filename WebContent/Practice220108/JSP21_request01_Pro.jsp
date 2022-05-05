<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <title>JSP 입문</title>
    
    <style>
    	td {
    		text-align: center;
    	}
    </style>
</head>

<%
	int number = Integer.parseInt(request.getParameter("number"));
	String name = request.getParameter("name");
	String document = request.getParameter("document");
	String sub = request.getParameter("sub");
%>

<body>
	<table border="1">
		<tr>
			<th>학번</th>
			<td><%= number %></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><%= name %></td>
		</tr>
		<tr>
			<th>학년</th>
			<td><%= document %></td>
		</tr>
		<tr>
			<th>선택과목</th>
			<td><%= sub %></td>
		</tr>
	</table>


</body>
</html>


