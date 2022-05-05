<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    
    <style>
    * {
    	margin: 0;
    	padding: 0;
    }
    li {
    	display: inline;
    	list-style-type: none;
    }
    </style>
    
    <title>JSP 입문</title>
</head>
<body>	 
	<h2>다음의 결과가 나오도록 데이터를 입력받는 폼과 입력받은 값을 화면에 표시하는 jsp파일을 작성하시오.</h2>
	<form method="post" action="JSP_test13_Pro.jsp">
		이름: <input type="text" name="name" placeholder="홍길동" required><br>
		내용: <input type="text" name="cont" placeholder="내용을 입력하십시오." required>
		<ul>
			<li>
				취미:<input type="checkbox" name="document" value="잠자기"> 잠자기		
			</li>
			<li>
				<input type="checkbox" name="document" value="게임"> 게임
			</li>
			<li>
				<input type="checkbox" name="document" value="수영"> 수영
			</li>
		</ul>
		 <input type="submit" value="등록">
		 <input type="reset" value="다시쓰기">
	</form>
	
	 
</body>
</html>
