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
	<h2>member 테이블에 확인</h2>
	
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
	
	try{
		// 연동할 db를 포함한 URL
		String jdbcUrl = "jdbc:mysql://localhost:3306/studybasicjsp"; 
		String dbId="root";
		String dbPass = "";
		
		Class.forName("com.mysql.jdbc.Driver");	// DriverManager에 등록
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass); // Connection 객체 얻어옴
		
		String sql = "select * from member"; 
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery(); // 단순히 읽어오는 용도
		
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
	</table>
</body>
</html>