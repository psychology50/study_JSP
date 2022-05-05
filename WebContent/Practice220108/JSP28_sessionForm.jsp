<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%if(session.getAttribute("sessionName") == null) { // 세션이 설정되지 않은 경우 %>
	<form method="post" action="JSP28_session.jsp">
		<label for="id">아이디</label>
		<input id="id" name="id" type="text" placeholder="kingdora" autofocus required><br>
		<label for="pw">비밀번호</label>
		<input id="pw" name="pw" type="password" placeholder="1234" required>
		<input type="submit" value="로그인">
	</form>
<%} else { // 세션이 설정된 경우 %>
	<form method="post" action="JSP28_logout.jsp">
		<%=session.getAttribute("sessionName") %>님이 접속하셨습니다.
		<input type="submit" value="로그아웃">
	</form>
<%}%>