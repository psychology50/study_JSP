<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 
     
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <style>
    * {
    	margin: 0;
    	padding: 0;
    }
    li {
    	display: inline;
    	list-style-type: none;
    }
    table {
    	width: 450px;
    }
    #left {
    	width: 225px;
    }
    </style>
    
    <title>JSP 입문</title>
</head>
<body>	 
	<%
		String contPage = request.getParameter("contentPage");
	%>

	<form method="post" action="template.jsp">
		<table border="1">
			<tr>
				<td id="top" colspan="2">
					<jsp:include page="top.jsp" flush="false" />
				</td>
			</tr>
			<tr>
				<td id="left">
					<jsp:include page="left.jsp" flush="false" />
				</td>
				<td id="cont">
					<jsp:include page="<%=contPage%>" flush="false" />
				</td>
			</tr>
			<tr>
				<td id="bottom" colspan="2">
					<jsp:include page="bottom.jsp" flush="false" />
				</td>			
			</tr>
		</table>
	</form>


</body>
</html>




