<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 

<%
String pageName = request.getParameter("pageName");
pageName += ".jsp";
%>

포함하는 페이지 include.jsp 입니다.<br>

<hr>
<!-- include 액션태그 기본 사용법 -->
<%-- <jsp:include page="포함될 페이지" flush="false"> --%>
<!-- 
flush 속성은 포함될 페이지로 제어가 이동될 때 현재 또는 포함하는 페이지가 지금까지 출력 버퍼에 저장한 결과를 처리하는 방법을
결정하는 것이다.
flush 속성을 true로 지정하면 포함될 페이지로 제어가 이동될 때, 현재 페이지가 지금까지 버퍼에 저장한 내용을
웹 브라우저에 출력하고 버퍼를 비운다.
그러나 include 액션태그에서 flush 속성의 가ㅑㅄ은 false로 지정하는 것이 좋다.
만일 flush의 속성을 true로 지정하면 일단 출력 버퍼의 내용을 웹 브라우저에 전송하게 되는데
이 때 헤더 정보도 같이 전송된다. 헤더 정보가 일단 웹 브라우저에 전송이 되고 나면 헤어 정보를
추가해도 결과가 반영되지 않기 때문이다. 그래서 false로 지정하는 것이 좋다.
 -->

<jsp:include page="<%=pageName %>" flush="false"/> <!-- include.jsp 페이지의 실행결과 포함 -->
include.jsp의 나머지 내용입니다.


