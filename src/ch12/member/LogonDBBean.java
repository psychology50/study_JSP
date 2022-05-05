package ch12.member;

import java.sql.*;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LogonDBBean {
	// static을 사용해서 객체를 생성하면 이 객체는 객체간의 전역 객체가 된다.
	// 아래 객체는 단 한번만 생성되고 이 객체에 접근하는 모든 사용자 간에 공유된다.

	// single톤 패턴 -> 하나의 객체를 만들고, 계속 쓴다.
	private static LogonDBBean instance = new LogonDBBean();
	
	public static LogonDBBean getInstance() {
		return instance;
	}
	
	private LogonDBBean() { }
	
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
//		DataSource ds = (DataSource)envCtx.lookup("jdbc/basicjsp");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/jsptest");
		return ds.getConnection();
	}
	
	public void insertMember(LogonDataBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("INSERT INTO MEMBER VALUES (?, ?, ?, ?)");
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setTimestamp(4, member.getReg_date());
			pstmt.executeUpdate();			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) try { pstmt.close(); } catch (SQLException ex) {}
			if (conn != null) try { conn.close(); } catch (SQLException ex) {}
		}
	}
	
	// 새로운 레코드를 추가하기 전에 기존에 가입된아이디인지 체크하는 메서드이다.
	public int userCheck(String id, String passwd) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpasswd = "";
		int x = -1;
		
		try { 
			conn = getConnection();
			pstmt = conn.prepareStatement("SELECT PASSWD FROM MEMBER WHERE ID = ?");
			pstmt.setString(1,  id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dbpasswd = rs.getString("passwd");
				if(dbpasswd.contentEquals(passwd)) x=1; // 인증 성공
				else x=0; // 비밀번호 틀림
			} else x=-1; // 아이디 틀림
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) try { rs.close(); } catch (SQLException ex) {}
			if (pstmt != null) try { pstmt.close(); } catch (SQLException ex) {}
			if (conn != null) try { conn.close(); } catch (SQLException ex) {}
		}
		return x;
				
	}
 	

}
