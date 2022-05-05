<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <title>JSP 입문</title>
	
</head>

<body>
	<h2>예제</h2>
	
	<%
		String sub[] = {"JSP", "JAVA", "Android", "HTML5"};
	%>
	
	<table border="1">
		<tr>
			<th>배열의 첨자번호</th>
			<th>배열 요소의 값</th>
		</tr>
		<%
			for(int i =0; i<sub.length; i++) { %>
				<tr><td><%=i %></td><td><%=sub[i] %></td></tr>
		<% 	} %>
		<%-- 
		<tr>
			<td>0</td>
			<td><%=sub[0] %></td>
		</tr>
		<tr>
			<td>1</td>
			<td><%=sub[1] %></td>
		</tr>
		<tr>
			<td>2</td>
			<td><%=sub[2] %></td>
		</tr>
		<tr>
			<td>3</td>
			<td><%=sub[3] %></td>
		</tr>
		--%>
	</table>
	

	
	
</body>
</html>