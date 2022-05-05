<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");

	Connection conn = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmt2 = null;
	ResultSet rs = null;

	try{
		// 연동할 db를 포함한 URL
		String jdbcUrl = "jdbc:mysql://localhost:3306/studybasicjsp"; 
		String dbId="root";
		String dbPass = "";
	
		Class.forName("com.mysql.jdbc.Driver");	// DriverManager에 등록
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass); // Connection 객체 얻어옴
	
		String sql = "select id, passwd from member where id = ?"; 
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			String rId = rs.getString("id");
			String rPasswd = rs.getString("passwd");
			
			if(id.equals(rId) && passwd.equals(rPasswd)) {
				// 폼에서 입력한 ID, 패스워드가 DB에서 읽어온 ID, 패스워드가 같으면..
				sql = "delete from member where id = ?";
				pstmt2 = conn.prepareStatement(sql);
				pstmt2.setString(1, id);
				pstmt2.executeUpdate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h2>member 테이블에 업데이트</h2>
	
	member 테이블의 레코드를 수정했습니다.
	

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
		if(rs != null) {
			try{rs.close();}catch(SQLException sqle) {}
		}
		if(pstmt2 != null) {
			try{pstmt2.close();}catch(SQLException sqle) {}
		}
		if(pstmt != null) {
			try{pstmt.close();}catch(SQLException sqle) {}
		}
		if(conn != null) {
			try{conn.close();}catch(SQLException sqle) {}
		}
		
	}
	
%>

</body>
</html>