<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
[1] JSP
	1. def.
	   · JSP(java server page), java 언어 기반으로 웹 페이지를 구현 가능하게 해줌.
	   · HTML과 Java언어를 혼합하여 사용할 수 있다.
	   · 브라우저에서 jsp를 호출하면 jsp 파일 자체가 보이는 것이 아니라, jsp가 servlet 형태로 변화되어 응답하게 된다.
	2. 형태
	   · <%--<%@ page language="java" contentType= ~~~~--%>  
          => 브라우저에 전달한 jsp의 파일 형식 지정
       · <%--
       		<%
       			System.out.println("_jspService()");
       			=> servlet의 service에 해당하는 부분. 즉, 화면에 노출되는 부분
       			
       			int total = 0;
       			for(int i=1; i<=10; i++) {
       				total += 1;
       			}
       			=> 자바 코드를 그대로 사용할 수 있다.
       		%>
       		1부터 10까지의 합은 : <%=total %> //<%= %> 는 서블릿의 out.print(total); 과 동일하다.
          --%>
       · <%--
         <%!
         	// 선언 식은 service 이외의 메서드 및 필드 등을 선언하기 위해 사용한다.
         	// 여기서 생성된 코드는 service 메서드 밖에 만들어진다.
         	// 파일이 변경된 경우 수행된다.
         	System.out.println("jspInit()!");
         	
         	public void jspDstroy() {
         		System.out.println("jspDstroy()");
         		// 파일이 변경되거나 WAS를 재실행할 때 수행된다.
         	}
         %>       
       	 --%>
	3. 동작 과정
	   1) 브라우저가 웹 서버에 JSP에 대한 요청 정보를 전달한다.
	   2) 브라우저가 요청한 JSP가 최초로 요청했을 경우만 JSP로 작성된 코드가 Servlet으로 코드로 변환한다. (java 파일 생성)
	   3) 서블릿 코드를 컴파일해서 실행 가능한 byteCode로 변환한다. (class 파일 생성)
	   4) 서블릿 클래스를 로딩하고 인스턴스를 생성한다.
	   5) 서블릿이 실행되어 요청을 처리하고 응답 정보를 생성한다.
	4. jsp의 class 파일 생성 위치
	   · jsp를 사용하게 되면 다음 경로에 변환된 java servlet으로 변환되어 실행된다.
	     - jsp 생성 경로
	       "eclipseworkspace"\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\"프로젝트명"\test.jsp"
	     - java servlet 생성 경로
	       "eclipseworkspace"\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\"프로젝트명"\org\apache\jsp\test.class
		   "eclipseworkspace"\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\"프로젝트명"\org\apache\jsp\test.java  
	5. jsp Lifecyle
	   · servlet과 동일하다.
	     <%--
	     1) init
	     	- jsp에서 mapping 되는 함수 이름 "jspInit()"
	        	public void jspInit() {
	        		System.out.println("jspInit()!");
	        	}	
	     2) service
	        - jsp에서 mapping 되는 함수 이름 "jspService()"
	        	public void jspService() {
	        		System.out.println("jspService()!");
	        	}
	     3) destroy
	        - jsp에서 mapping 되는 함수 이름 "jspDestroy()"
	        	public void jspDestroy() {
	        		System.out.println("jspDestroy()!");
	        	}
	       --%>
	         
 
 -->
</body>
</html>