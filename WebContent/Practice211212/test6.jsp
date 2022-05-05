<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>연습 문제</title> <!-- 문서 제목 -->
</head>
<body>
	<h1>상품 주문서</h1>
	
	<form>
	<fieldset>
		<legend>개인 정보</legend>
		<ul>
			<li>
				<label class="user" for="id">이름</label>
				<input type="text" id="id" placeholder="여백없이 입력" required>
			</li>
			<li>
				<label class="tel1" for="id">연락처</label>
				<input type="text" id="id" placeholder="연락 가능한 번호" >			
			</li>
		</ul>
	</fieldset>
	
	
	<fieldset>
		<legend>배송지 정보</legend>
		<ul>
			<li>
				<label class="title" for="addr">주소</label>
				<input type="text" size="40" id="addr" required>
			</li>
			<li>
				<label class="title" for="tel2">전화번호</label>
				<input type="tel" id="tel2" required>
			</li>
			<li>
				<label class="comment" for="title">메모</label>
				<textarea cols="40" rows="3" id="comment"></textarea>
			</li>
		</ul>
	</fieldset>
	

	<fieldset>
	<legend>배송지 정보</legend>
		<ul>
			<li>
				<input type="checkbox">과테말라 안티구아 (100g)
				<input type="number" value="0" min="0" max="5">개
			</li>
			<li>
				<input type="checkbox">인도네시아 만델링 (100g)
				<input type="number" value="0" min="0" max="5">개
			</li>
			<li>
				<input type="checkbox">탐라는도다(블렌딩) (100g)
				<input type="number" value="0" min="0" max="5">개
			</li>
		</ul>
	</fieldset>
	
	
	<input type="submit" value="주문하기">
	<input type="reset" value="다시 작성">
	</form>
	
	
</body>
</html>