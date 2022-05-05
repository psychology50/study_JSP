<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

<%
	int num = Integer.parseInt(request.getParameter("num"));

%>

<body>
	<table border="1">
		<tr>
			<th>글번호</th>
			<th>글제목</th>
			<th>글내용</th>
		</tr>	
	</table>
	
</body>

	



