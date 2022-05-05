<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
<meta charset="UTF-8">
<title>JSP입문</title> <!-- 문서 제목 -->
</head>
<body>
	<h2>라디오 버튼 만들기(여러개 중에 하나만 선택 가능)</h2>
	<form>
		<input type="radio" name="singer" value="BTS"> BTS <br>
		<input type="radio" name="singer" value="EXO" > EXO <br>
		<input type="radio" name="singer" value="got7" > got7 <br>
		<input type="radio" name="singer" value="Blackpink"> BLACKPINK
	</form>
	<hr>
	
	<h2>체크박스 만들기(다중 선택이 가능)</h2>
	<form> <!-- disable 속성을 주게 되면 선택이 되지 않는다. -->
		<input type="checkbox" name="hobby" value="sleep" checked> 잠자기 <br>
		<input type="checkbox" name="hobby" value="game"> 게임하기 <br>
		<input type="checkbox" name="hobby" value="walk"> 걷기 <br>
		<input type="checkbox" name="hobby" value="run" disabled> 달리기 
	</form>
	
	<h2>드롭 다운 리스트(하나만 선택 가능)</h2>
	<select name = "fruits">
		<option value="apple"> 라면		
		<option value="orange" selected> 소고기		<!-- selected 이면 초기값이 선정된 상태이다. -->
		<option value="strawberry"> 돼지고기
		<option value="peach"> 치킨
	</select>
	
</body>
</html>