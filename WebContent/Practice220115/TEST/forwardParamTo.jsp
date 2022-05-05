
<% request.setCharacterEncoding("utf-8"); %>

<%
	String name = (String)request.getParameter("name");
	String color = (String)request.getParameter("color");
	String selectedPage = color + ".jsp";
%>



<jsp:forward page="<%=selectedPage %>">
	<jsp:param name="color" value="<%=color %>"/>
	<jsp:param name="name" value="<%=name %>" />
</jsp:forward>

