<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

포워딩하는 페이지 forward.jsp로 절대 표시되지 않습니다..<br>
<!-- 18번 라인의 forward 액션태그를 만나면서 
6번 라인의 내용은 출력 버퍼에서 사라져 표시되지 않는다.
또한 18번 라인에서 	프로그램의 제어가 forwardToTest로 이동했기 때문에
20번 라인또한 출력 하지 않는다.							
-->

<!-- 
	forward 액션 태그의 기본적인 사용법
<%--	<jsp:forward page="이동할 페이지명"/>--%>
<%--	<jsp:forward page="이동할 페이지명"></jsp:forward> --%>
<%--	<jsp:forward page='<%=expression + ".jsp" %>'/>	--%>
 --> 

<jsp:forward page="JSP31_forwardTo.jsp"/>
   
forwardTest.jsp페이지의 나머지 부분으로 표시도 실행도 되지 않습니다.


<hr>




