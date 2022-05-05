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
[3] redirect와 forward
	1. redirect
	   (1) def. 클라이언트의 요청을 다른 페이지로 다시 연결하는 기능
	   (2) concept
	            Web brower												  WAS(tomcat)
	       * 웹 브라우저는 HTTP 규약에 따라 응답 코드 302에 대하여 redirection을 수행한다.     
	     ① redurectuib01.jsp를 요청  ------- Rediretion01.jsp 요청 ------→ ② redirection01.jsp
	      																      ↓
	     ③ redurectuib02.jsp를 요청 ←------ Redirection을 위해서     -------	<%-- <% response.sendRedirect("redirection02.jsp") %> --%>
	      		     |     응답 코드 : 302, Location header : redirection02.jsp 를 전달							
					 ↓
		Brower의 URL이 redirection02.jsp로 변경됨. - Rediretion01.jsp 요청 -→  ④ redirection02.jsp 
	     								      ←- Rediretion02.jsp 응답 -
	   (3) 활용 : 서버 분산 처리할 수 있다.
	   (4) Code : <%-- <% response.sendRedirect("resdirection02.jsp"); %>  --%>	     								      
	2. forward
	   (1) def. 클라이언트의 요청은 was 내부에서 다른 페이지에 전달하는 기능
	   (2) concept
	            Web brower										WAS(tomcat)       	     
	     		① logic 요청  ------------ logic 요청 -----------→ ② logic 서블릿
	     														 : forwarding을 통해 전달할 때는
	     														   request 객체에 담아서 전달한다.
	     															↓
	    		④ Logic 응답을 받아도 ←----- logic 응답 ------------ ③ view.jsp or logic 서블릿
	    		  URL이 view.jsp로 변하지는 않는다.
	   (3) 활용 : 로직과 표현을 분리하기 위해 사용할 수 있다. jsp는 표현적인 부분이 많기에 로직을 많이 넣기에는 부적합하다.
	       		 그래서 로직적인 것을 서블릿으로 처리하고, 결과는 jsp로 전달하게 되면 더 효율적인 작업이 가능해진다.
	   (4) Logic 서블릿 구현 코드
	       · forwarding을 통해 데이터를 전달하기 위해서는 request 객체와 response 객체를 전달하면 된다.
	                그래서 서블릿에서 구한 결과값을 request에 넣어 전달하는 것이 일반적이다.
	       · request.setAttribute("key", value); // 형식으로 request에 데이터를 저장할 수 있따.
	         RequestDispatcher 객체를 통해 어디로 forwarding 할 지 설정한다.
	   (4) ex
	   	   <%--
	       - main.jsp
	         service(HttpServletRequest request, HttpServletResponse response)
	         ServletExeption, IOException {
	         	diceValue= (int)(Math.random() * 6) + 1;
	         	request.setAttribute("dice", diceValue);
	         	
	         	RequestDispatcher requestDispatcher01 = request.getRequestDispatcher("/next");
	         	requestDispatcher01.forward(request, response);
	         }
	       - view.jsp
	         dice = (Integer)request.getAttribute("dice");
	         out.println("dice: " + dice);

           --%>		
 -->
</body>
</html>