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
<!-- 
[forward 액션태그]
: 다른 페이지로 프로그램의 제어를 이동할 때 사용.
    그 전까지 출력버퍼에 저장되어 있던 내용을 제거하고, forward 액션태그가 지정하는 페이지로 이동.
    사용자가 입력한 값에 따라 여러 페이지로 이동해야 할 경우에 사용하면 좋다.  
   
Redirection과의 차이는 무엇인가?
Redirection : 시스템에 변화가 생기는 요청(로그인, 회원가입)
forward : 시스템에 변화가 없는 단순 조회 요청(글쓰기 버튼을 여러번 눌러도 실행되지 않는다.)
속도는 forward가 빠르다.
<%--
[사용법]
<jsp:forward page="이동할 페이지명"/>   
<jsp:forward page="이동할 페이지명"><jsp:forward/>
--%>

 -->
 
<h2>forward 액션태그</h2>
<!--
forwardForm => forward => frowardTo 로 페이지가 이동한다.
그런데 주소창을 보면 forward.jsp 파일의 경로가 출력된다.
하지만 실제 내용을 보면 forwardTo.jsp 파일의 내용이 출력된 것이다.
즉, 요청된 페이지는 forward 페이지이지만 웹 브라우저에 표출되는 내용은 forwardTo.jsp이다.
 -->

<form method="post" action="JSP31_forward.jsp">
	아이디: <input type="text" name="id"><br>
	취미:
		<select name="hobby">
			<option value="WOW">WOW</option>
			<option value="만화보기">만화보기</option>
			<option value="스타2-군단의심장">스타2-군단의심장</option>
		</select><br>
	<input type="submit" value="입력완료">
</form>
	
</body>
</html>











