<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB연동</title>
</head>
<body>

<h2>JDBC 드라이버 테스트</h2>

<%
	Connection conn = null; // 레퍼런스 변수는 초기값은 null로 지정한다. 
	
	try {
		// 사용하려는 데이터 베이스 명을 포함한 URL을 기술한다.
		String jdbcUrl = "jdbc:mysql://localhost:3306/studybasicjsp";
		// basicjsp : DB table name
		String dbId = "root";	// 사용자 꼐정
		String dbPass = "";	// 계정 패스워드
		// 데이터 베이스와 연동하기 위해 DriverManager에 등록한다
		Class.forName("com.mysql.jdbc.Driver");
		// DriverManager 객체로 부터 Connection 객체를 얻어온다.
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		// 커넥션이 제대로 연결되면 수행된다.
		out.println("정상적으로 연결되었습니다.");
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
	
</body>
</html>