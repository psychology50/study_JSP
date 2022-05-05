<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
<meta charset="UTF-8">
<style type = "text/css">
</style>
<title>연습 문제</title> <!-- 문서 제목 -->
</head>
<body>
	<fieldset>
	<legend>신청 과목</legend>
	<label>이 달에 신청할 과목을 선택하세요(1과목만 가능)</label>
	<form>
		<input type="radio" name="sub" value="회화" checked> 회화 
		<input type="radio" name="sub" value="문법"> 문법
		<input type="radio" name="sub" value="작문"> 작문 
		
	</form>
	</fieldset>
	
	<fieldset>
	<legend>메일링</legend>
	<label>메일로 받고 싶은 뉴스 주제를 선택해 주세요(복수 선택 가능)</label>
	<form>
		<input type="checkbox" name="mail" value="해외 단신"> 해외 단신
		<input type="checkbox" name="mail" value="5분 회화"> 5분 회화 
		<input type="checkbox" name="mail" value="모닝팝스"> 모닝팝스 
		
	</form>
	</fieldset>
	
	
</body>
</html>