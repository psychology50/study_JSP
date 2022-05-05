<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>포워딩될 페이지에 파라미터 값 전달 예제</h2>
	<form method="post" action="forwardParamTo.jsp">
		이름:<input type="text" name="name" placeholder="홍길동" autofocus required><br>
		<select name="color">
			<option disabled>==선택==</option>
			<option value="red">빨간색</option>
			<option value="green" selected>초록색</option>
			<option value="yellow">노란색</option>
			<option value="blue">파란색</option>
		</select> <br>
		<input type="submit" value="확인">
	</form>
	


	
	
</body>
</html>