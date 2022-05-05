<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h2>개인정보 확인</h2>
	
	<table border="1">
		<tr>
			<td width="100">아이디</td>
			<td width="100">패스워드</td>
			<td width="100">이름</td>
			<td width="250">이메일</td>
		</tr>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		String jdbcUrl = "jdbc:mysql://localhost:3306/studybasicjsp"; 
		String dbId="root";
		String dbPass = "";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		String sql = "select * from woori where id = ?"; 
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			String rId = rs.getString("id");
			String rPw = rs.getString("pw");
			String name = rs.getString("name");
			String email= rs.getString("email");
			
			if(id.equals(rId) && pw.equals(rPw)) {
		
%>
		<tr>
			<td width="100"><%=id %></td>
			<td width="100"><%=pw %></td>
			<td width="100"><%=name %></td>
			<td width="250"><%=email %></td>
		</tr>	
		
<%			} else {
				out.println("비밀번호가 틀렸습니다.");
		  	} 
		} else {
			  out.println("아이디가가 틀렸습니다.");
		} 
	} catch(Exception e) {
		e.printStackTrace();
	} finally { // 실행 결과 유무와 상관 없이 pstmt와 conn은 메모리에서 제거해야 한다.
		if(rs != null) try{rs.close();}catch(SQLException sqle) {}
		if(pstmt != null) try{pstmt.close(); } catch(SQLException sqle) {}
		if(conn != null) try{conn.close();}catch(SQLException sqle) {}
		
	}
	
	// java 중급... 소켓 프로그램
%>
	</table>
</body>
</html>