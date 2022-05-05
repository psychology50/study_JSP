<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "ch12.member.LogonDBBean" %>

<% request.setCharacterEncoding("UTF-8"); %>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	LogonDBBean logon = LogonDBBean.getInstance();
	int check = logon.userCheck(id, passwd);
	
	if(check == 1) {
		session.setAttribute("id", id);
		response.sendRedirect("sessionMain.jsp");
	} else if (check == 0)  { %>

	<script>
		aleter("비밀번호가 틀렸습니다.");
		history.go(-1);
	</script>
<%	} else { %>
	<script>
		aleter("아이디가 틀렸습니다.");
		history.go(-1);
	</script>
<%  } %>