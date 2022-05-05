<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 서버에서 클라이언트로 넘긴 파일이 깨지지 않게 해줌 -->

<% request.setCharacterEncoding("utf-8"); %> <!-- form으로 부터 넘어온 파라미터 변수의 한글이 깨지지 않도록 하기 위해 사용하는 코드 -->
<!-- 클라이언트에서 서버로 넘어온 파일을 깨지지 않게 해줌 -->
<!-- request : 페이지와 페이지 사이에 연결해줌. 애초에 jsp는 비연결 지향이기 때문에 중간자 역할이 없으면 연결이 끊김. -->

<%
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	
	if (age >= 20) {
		out.println("<b>" + name + " </b> 님의 나이는 20세 이상입니다."); // out.println() 메소드를 사용한 이유는 코드를 더 간결하게 표시하기 위함
	}															  // jsp의 표현식을 사용한다면 가독성이 떨어진다.
	else {
		out.println("<b>" + name + " </b> 님은 미성년자 입니다.");
	}
%>

<!-- 
	1~2번 라인에 걸여 page 디렉티브에서 현재 페이지의 한글이 깨지지 않도록 한글의 인코딩을 utf-8로 지정했는데 5번 라인에서 다시 지정하는 이유
	page 디렉티브에서 설정한 한글 인코딩은 웹 서버가 응답해준 결과의 한글이 깨지지 않도록 설정하는 부분이다.
	그러나 4번 라인은 웹 브라우저가 웹 서버쪽으로 요청했을 때, 요청 정보에 한글이 있을 경우 한글이 깨지는 것을 방지하기 위한 한글 인코딩이다.
	폼으로부터 입력된 데이터에 한글이 있을 경우, 반드시 기술해야 하는 문장이다.
	
-->