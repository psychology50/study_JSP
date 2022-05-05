<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 현재 문서가 HTML5 문서임을 명시한다. -->
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <title>예제</title>
	<style>
		h1{
			margin:0px;
		}
		#comment {
			width: 500px;
			height: 60px;
		}
	</style>
</head>

<body>
	<form>
		<div style = "border-bottom:1px solid black">
			<h1>프런트엔드 개발자 지원서</h1>
			HTML, CSS, JavaScript에 대한 기술적 이해와 경험이 있는 분을 찾습니다.
		</div>
		<div>
			<div> 개인정보
				<ul>
					<li>
						<label for="id">이름</label>
						<input type="text" id = "id" placeholder="공백없이 입력하세요" required>
					</li>
					<li>
						<label for="id">연락처</label>
						<input type="text" id = "id">
					</li>
				</ul>
			</div>
			<div> 지원 분야
				<ul>
					<li>
						<input type="radio" name="document" value="웹 퍼블리싱"> 웹 퍼블리싱		
					</li>
					<li>
						<input type="radio" name="document" value="웹 애플리케이션"> 웹 애플리케이션 개발
					</li>
					<li>
						<input type="radio" name="document" value="개발환경개선"> 개발 환경 개선
					</li>
				</ul>
			</div>	
			<div>
				<label for="title">지원 동기</label><br>
				<textarea cols="40" rows="3" id="comment" placeholder="본사 지원 동기를 간략히 써주세요."></textarea>
			</div>
			<input type="submit" value="접수하기">
			<input type="reset" value="다시 쓰기">
		</div>
	</form>
</body>
</html>