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
	<h1>여름방학 특강 신청</h1>

	<form>
	<fieldset>
	<legend>수강과목</legend>
		<ul>
			<li>
				<label class="eng" for="sub">영어회화(초급)</label>
				<input type="text" id="sub" value="오전 9:00~11:00" readonly>
				
			</li>
		</ul>
	</fieldset>
	</form>
	
	<form>
	<fieldset>
	<legend>신청자</legend>
		<ul>
			<li>
				<label class="reg" for="name">이름</label>
				<input type="text" id="name" autofocus required>
			</li>
			<li>
				<label class="reg" for="id">학번</label>
				<input type="text" id="id" placeholder="하이폰 없이 입력" maxlength="10" required>
			</li>
			<li>
				<label class="reg" for="class">학과</label>
					<select id="class"> 
						<option value="archi">건축공학과</option>
						<option value="mechanic">기계공학과</option>
						<option value="indust">산업공학과</option>
						<option value="elec">전기전자공학과</option>
						<option value="computer" selected>컴퓨터공학과</option>
						<option value="chemical">화학공학과</option>
					</select>
			</li>
		</ul>
	</fieldset>
	</form>
	
	
</body>
</html>