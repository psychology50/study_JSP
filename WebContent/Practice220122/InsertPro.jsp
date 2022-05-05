<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String str = ("");
		
		try{
			String jdbcUrl = "jdbc:mysql://localhost:3306/studybasicjsp";
			String dbId = "root";
			String dbPw = "";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "insert into woori values(?, ?, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.executeUpdate();
			
			str = "woori table insert clear";
			
		} catch(Exception e) {
			e.printStackTrace();
			str = "woori table insert error";
		} finally {
			if (pstmt != null) try {pstmt.close();} catch (SQLException sqle) {}
			if (conn != null) try {conn.close();} catch (SQLException sqle) {}
		}

	%>
	<%= str %>
</body>
</html>