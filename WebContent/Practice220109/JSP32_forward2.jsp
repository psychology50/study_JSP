<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

<%
  String id = "Kingdora";
  String hobby = "만화보기";
%>

  <!-- 
   		forward 액션태그에서 포워딩되는 페이지에 값 전달하기 
<%--								
		<jsp:forward page="이동할 페이지명">
			<jsp:param name="paramName1" value="var1"/>
			<jsp:param name="paramName2" value="var2"/>
		</jsp:forward>
--%>   		
    -->

 포워딩하는  페이지 forwardTest2.jsp입니다.<br>
   <!-- 다음 예제는 form 태그를 사용하지 않고 값을 넘길수 있다.  -->
<jsp:forward page="JSP32_forwardTo2.jsp" >
   <jsp:param  name="id" value="<%=id%>"/>
   <jsp:param  name="hobby" value="<%=hobby%>"/>
</jsp:forward>
<hr>




