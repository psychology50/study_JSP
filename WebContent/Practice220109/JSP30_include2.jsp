<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

<%
String name = "홍길동";
String pageName = "JSP30_included2.jsp";
%>
포함하는 페이지 include2.jsp 입니다.<br>
포함되는 페이지에 파라미터 값을 전달합니다.<br>
<hr>

 <!-- 
 	include 액션 태그에서 포함되는 페이지에 값 전달하기
 <%--	<jsp:include page="포함되는 페이지"  flush="false">
	  	 	<jsp:param  name="name" value="var1"/>
	   		<jsp:param  name="pageName" value="var2"/>
 		</jsp:include>	
 --%>
 	value 속성의 값으로 표현식을 사용할 수 있다.
 	
  -->

<jsp:include page="<%=pageName %>" flush="false">
	<jsp:param name="name" value="<%=name %>" />
	<jsp:param name="pageName" value="<%=pageName %>" />
</jsp:include>
include2.jsp의 나머지 내용입니다.



