<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
<meta charset="UTF-8">
<title>JSP입문</title> <!-- 문서 제목 -->
</head>
<body>
	<h2>input의 value 특성</h2>
	<!-- value의 속성은 초기값이라고 생각하면 된다. -->
	<form>
		이름 : <br><input type="text" name="student_name"><br>
		학번 : <br><input type="text" name="student_id"><br>
		학과 : <br><input type="text" name="department" value="컴퓨터공학과"><br>
	</form>
	<hr>
	
	<h2>input의 readonly 속성</h2>
	<form> <!-- 읽기만 가능하다. submit 속성의 버튼을 클릭할 경우 값은 전달이 된다. -->
		이름 : <br><input type="text" name="student_name"><br>
		학번 : <br><input type="text" name="student_id"><br>
		학과 : <br><input type="text" name="department" value="컴퓨터공학과" readonly><br>
	</form>
	<hr>
	
	<h2>input의 disable 속성</h2>
	<form> <!-- 압력 필드를 사용할 수 없다. 클릭도 안 된다. submit 속성의 버튼을 클릭할 경우에 값 전달도 안 된다. -->
		이름 : <br><input type="text" name="student_name"><br>
		학번 : <br><input type="text" name="student_id"><br>
		학과 : <br><input type="text" name="department" value="컴퓨터공학과" disabled><br>
	</form>
	<hr>
	
	
</body>
</html>