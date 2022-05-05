<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, javax.sql.*, javax.naming.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>usePool</title>

</head>
<body>
	<h3>커넥션 풀을 사용한 member 테이블의 레코드를 화면에 표시하는 예제</h3>
	<table border="1">
		<tr>
			<td width="100">아이디</td>
			<td width="100">패스워드</td>
			<td width="100">이름</td>
			<td width="250">가입일자</td>
		</tr>

<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		Context initCtx = new InitialContext(); // initCtx instance create
		// lookup 메서드를 tkdydgkdu "java: comp/env"에 해당하는 객체를 찾아 envCtx에 넣는다.
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		// "jva:comp/env"로 찾아낸 객체 envCtx의 lookup 메서드를 사용하여 "jdbc/studybasicjsp"를 가지고 객체를 얻어내
		// DataSource 타입으로 형 변환 후, ds에 저장한다.
		DataSource ds = (DataSource)envCtx.lookup("jdbc/jsptest"); // DB 경로는 서버에 세팅되어 있다.
		// getConnection 객체를 사용하여 커넥션 풀로부터 객체를 얻어 conn에 저장한다.
		// 이제부터 conn를 사용하여 DB와 연동한다.
		conn = ds.getConnection();
		
		String sql = "select * from member";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String id = rs.getString("id");
			String passwd = rs.getString("passwd");
			String name = rs.getString("name");
			Timestamp register = rs.getTimestamp("reg_date");
%>
		<tr>
			<td width="100"><%=id %></td>
			<td width="100"><%=passwd %></td>
			<td width="100"><%=name %></td>
			<td width="250"><%=register.toString() %></td>
		</tr>
	
<%		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		if(rs != null) try {rs.close();} catch(SQLException sqle) {}
		if(pstmt != null) try {pstmt.close();} catch(SQLException sqle) {}
		// Connetion 객체를 메모리에서 제거하는 것이 아니라, 커넥션 풀로 Connection 객체를 반환하는 것이다.
		if(conn != null) try {conn.close();} catch(SQLException sqle) {}
	}
	
%>
	</table>

</body>
</html>