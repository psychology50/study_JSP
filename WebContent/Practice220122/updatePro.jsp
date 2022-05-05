<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");

	Connection conn = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmt2 = null;
	ResultSet rs = null;
	
	try {
		String jdbcUrl = "jdbc:mysql://localhost:3306/studybasicjsp"; 
		String dbId="root";
		String dbPass = "";
	
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		String sql = "select id, pw from woori where id = ?"; 
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();	
		
		if (rs.next()) {
			String rId = rs.getString("id");
			String rPw = rs.getString("pw");
			
			if (id.equals(rId) && pw.equals(rPw)) {
				sql = "Update woori set name = ? where id = ?";
				pstmt2 = conn.prepareStatement(sql);
				pstmt2.setString(1, name);
				pstmt2.setString(2, id);
				pstmt2.executeUpdate();						
%>
</head>
<body>
	정보가 수정되었습니다.

<%
			} else {
			  out.println("패스워드가 틀렸습니다.");
			}
		} else {
			out.println("아이디가 틀렸습니다.");
		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		if(rs != null) try{rs.close();}catch(SQLException sqle) {}
		if(pstmt2 != null) try{pstmt2.close();}catch(SQLException sqle) {}
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle) {}
		if(conn != null) try{conn.close();}catch(SQLException sqle) {}		
	}

%>
	
</body>
</html>