<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	Timestamp register = new Timestamp(System.currentTimeMillis());
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";
	
	try{
		// 연동할 db를 포함한 URL
		String jdbcUrl = "jdbc:mysql://localhost:3306/studybasicjsp"; 
		String dbId="root";
		String dbPass = "";
		
		Class.forName("com.mysql.jdbc.Driver");	// DriverManager에 등록
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass); // Connection 객체 얻어옴
		
		String sql = "insert into member values(?, ?, ?, ?)"; // insert문 사용해서 레코드 추가
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		pstmt.setTimestamp(4, register);
		pstmt.executeUpdate();
		// 쿼리 수행...(insert, delete, update) 경우 executeUpdate() 사용하고
		// select문처럼 단순히 읽어오기만 하는 경우는 executeQuery() 사용
		str = "member 테이블에 새로운 레코드를 추가했습니다.";
		
		
	} catch(Exception e) {
		e.printStackTrace();
		str="member 테이블에 새로운 레코드를 추가에 실패했습니다.";
	} finally { // 실행 결과 유무와 상관 없이 pstmt와 conn은 메모리에서 제거해야 한다.
		if(pstmt != null) {
			try{pstmt.close();}catch(SQLException sqle) {}
		}
		if(conn != null) {
			try{conn.close();}catch(SQLException sqle) {}
		}
		
	}
	
	// java 중급... 소켓 프로그램
%>
</head>
<body>
	<h2>member 테이블에 레코드 추가</h2>
	
	<%=str %>
</body>
</html>