<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cookieName = "id";
	Cookie cookie = new Cookie(cookieName, "hongkd"); // 쿠키 이름이 id, 값이 hongkd인 쿠키
	cookie.setMaxAge(60 * 2); // 쿠키 지속시간을 2분으로 설정. 2분이 지나면 표시되지 않는다.
	response.addCookie(cookie); // 생성된 쿠키를 response 객체에 담는다

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키</title>
</head>
<body>
	<h2>쿠키를 생성하는 페이지</h2>
	"<%=cookieName %>" 쿠키가 생성되었습니다.<br>
	<form method="post" action="JSP46_useCookie.jsp">
		<input type="submit" value="쿠키 생성">
	</form>

</body>
</html>