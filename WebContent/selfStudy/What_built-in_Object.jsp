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
9가지 내장객체 메서드 총정리

1. Page : 현재 JSP 페이지를 나타내는 객체
   
2. Request : 클라이언트의 요청을 처리하는 객체
   (1) getParameterName() : 모든 요청 매개 변수의 이름을 리턴한다.							⌉
   (2) getParameter(name) : name에 해당하는 매개변수의 값을 리턴한다.						| 요청 매개변수를 액세스하기 위한 메서드
   (3) getParameterValues(name) : name에 해단하는 매개변수의 모든 값을 리턴한다.				⌋
   (4) getHeaderNames() : 요청에 대한 헤더의 이름을 리턴한다.								⌉
   (5) getHeader(name)  : name에 대한 헤더 값을 String형으로 리턴한다.						|
   (6) getHeaders(name  : name에 대한 모든 헤더 값을 리턴한다.							| 요청 헤더를 읽어내는 메서드
   (6) getIntHeader(name)  : name에 대한 헤더 값을 int 자료형으로 리턴한다.					|
   (7) getDateHeader(name) : name에 대한 헤더의 날짜 값을 리턴한다.						⌋
   (8) getCookies() : 요청에 대한 모든 쿠키를 리턴한다.
   (9) getMethod()  : 요청에 대한 HTTP(GET, POST) 메서드를 리턴한다.
  (10) getRequestURL()   : 요청 URL을 리턴한다. (질의 문자열은 안 한다.)
  (11) getQueryString()  : 요청 URL을 리턴한다. (질의 문자열 포함.)
  (12) getSessiong(flag) : 들어온 요청의 세션 데이터를 리턴한다.
  (13) getRequestDispatcher(path) : Path에 지정된 LocalURL에 대한 요청 전달자를 리턴한다.
  (14) getRemoteHost() : 요청을 보낸 호스트의 이름을 리턴한다.
  (15) getRemoteAddr() : 요청을 보낸 호스트의 IP를 리턴한다.
  (16) getRemoteUser() : 요청을 보낸 사용자의 이름을 리턴한다.
   
3. Session : 사용자 개개인의 정보를 처리하는 객체로 사용자가 웹 서버에 접근하면 생성되어 종료할 때까지 유지
   (1) getId() : session의 ID를 리턴한다.
   (2) getCreationTime() : session이 생성된 시간을 long 자료형으로 리턴한다.
   (3) getLastAccessedTime() : session이 마지막으로 액세스된 시간을 리턴한다.
   (4) getMaxInactiveInterval() : session이 유지되는 최대시간을 초 단위로 리턴한다.
   (5) getMaxInactiveInterval(time) : session이 유지되는 최대시간을 초 단위로 설정한다.
   (6) isNew() : session 값이 없으면 true를 리턴한다.
   (7) invalidate() : session 객체 소멸. session에 저장되어 있던 정보를 모두 삭제한다.
   (8) getAttribute(name) : 세션변수(name)에 설정된 값을 리턴한다.
   (9) setAttribute(name, value) : 세션변수(name)에 값(value)을 설정한다.
   
4. Application : 웹 서버의 어플리케이션이 실행되는 실행환경에 대한 정보를 처리하는 객체
   (1) getServerInfo()   : 컨테이너의 이름과 버전을 리턴한다.								⌉
   (2) getMajorVersion() : 컨테이너의 주버전을 리턴한다.									| 컨테이너 버전 확인
   (3) getMinorVersion() : 컨테이너의 부버전을 리턴한다.									⌋
   (4) getContext(path)  : Path에 대한 외부환경 정보를 리턴한다.							⌉
   (5) getRealPath(path) : Path에 대한 절대 경로 리턴									|
   (6) getResource(path) : Path에 지정된 URL을 액세스 객체로 바꾸어 준다.					| 서버 측의 경로 확인
   (7) getResourceAsStream(path) : Path에 URL을 읽을 수 있는 입력 스트림으로 바꾸어 준다.		|
   (8) getMinmeType(filename) : filename에 해당하는 파일의 MIME 타입을 리턴한다.			⌋
   (9) log(msg) : msg를 로그 파일에 기록한다.											⌉  로그 파일 관련 메서드
  (10) log(msg, exception) : msg와 exception을 로그 파일에 기록한다.					⌋
   
5. Response : 서버가 클라이언트에게 처리결과를 응답하는 객체
   (1) setContentType()  : 응답되는 컨텐츠의 MIME 타입을 설정한다.				⌉  컨텐츠 설정에 필요한 메서드 
   (2) setCharacterEncoding() : 응답되는 컨텐츠의 문자 인코딩 스타일을 리턴한다.		⌋
   (3) addCookie(cookie) : 쿠키를 추가한다.									⌉  
   (4) addHeader(name, value) : 해당 이름의 헤더에 값(String)을 추가한다.			|
   (5) addIntHeader(name, value) : 해당 이름의 헤더에 값(int)을 추가한다.			|
   (6) addDateHeader(name)  : 해당 이름의 헤더에 날짜 값을 추가한다.				| 응답 헤더 세팅을 위한 메서드
   (7) containsHeader(name) : 해당 이름의 헤더가 포함되어 있는 지 확인한다.			|
   (8) setHeader(name, value) : 해당 이름의 헤더에 값(String)을 넣는다.			|
   (9) setIntHeader(name, value) : 해당 이름의 헤더에 값(int)을 넣는다.			|
  (10) setDateHeader(name) : 해당 이름의 헤더에 날짜 값을 넣는다.					⌋
  (11) setStatus(code) : 응답 상태 코드를 설정한다.
  (12) sendError(status, msg) : 응답 코드와 에러 메시지를 설정한다.
  (13) sendRedirect(URL) : 다른 URL로 이동한다.
  (14) encodeRedirectURL(URL) : sendRedirect() 메서드에 넣을 URL을 인코딩한다.
  (15) encodeURL(name) : 링크에 넣을 URL을 인코딩한다.
   
6. out : 클라이언트에게 응답하기 위한 output Stream을 처리하는 객체
   (1) print()   : 내용이 줄바꿈 없이 이어서 출력
   (2) println() : 내용이 줄 단위로 출력
   (3) getBufferSize() : 출력 버퍼 크기를 Byte로 리턴한다.
   (4) getRemaining()  : 출력 버퍼의 빈 공간의 크기를 Byte로 리턴한다. 
   (5) clearBuffer()   : 출력 버퍼를 비운다.  
   (6) clear() : 출력 버퍼를 비운다다. (만약 이전에 flush로 되어 있었으면 에러 발생)
   (7) flush() : 출력 버퍼를 flush 시킨다.
   (8) close() : 출력 스트림을 닫는다.
   
7. PageContext : JSP 실행에 대한 cointext 정보를 담고 있는 객체
   (1) getException() : exception 객체를 리턴한다.								⌉ 
   (2) getOut() : out 내부 객체를 리턴한다.										|
   (3) getSession() : session 내부 객체를 리턴한다.								|
   (4) getServletConfig()  : config 내부 객체를 리턴한다.							| 객체 내부 속성을 알 수 있는 메서드
   (5) getServletContext() : application 객체를 리턴한다.						|
   (6) getPage() : page 내부 객체를 리턴한다.										|
   (7) getRequest()  : request 내부 객체를 리턴한다.								|
   (8) getResponse() : response 내부 객체를 리턴한다.								⌋
   (9) forward(path) : 다른 path에 해당하는 URL로 권한을 전달한다. (영구적)				⌉  요청 전달 메서드 
  (10) include(path) : 다른 path의 페이지를 현재 페이지에 포함시킨다. (일시적)				⌋
  (11) setAttribute(key, value, scope) : Scope의 시간동안 key의 value값을 저장한다.	⌉ 
  (12) getAttributeNamesInScope(scope) : 특정 scope의 모든 속성을 리턴한다.			|
  (13) getAttribute(key, scope) : key에 대한 scope를 리턴한다.					| scope 속성을 제어할 수 있는 메서드
  (14) removeAttribute(key, scope) : key에 대한 scope를 제거한다.					|
  (15) findAttribute(name) : name에 지정된 속성의 scope를 찾는다.					|
  (16) getAttributeScope(name)  : name에 해당하는 scope를 리턴한다.				⌋
   
   
8. config : JSP 페이지가 컨테이너에 의해 컴파일 되어 서블릿 클래스로 변환될 때, 서블릿의 구성 데이터로 초기값과 변수를 저장하는 객체
   (1) getIntitParameterNames() : 변수의 이름을 리턴한다.
   (2) getIntitParameter(name)  : 변수의 이름을 넣을 경우 값을 리턴한다.
   
9. Exception : 프로그램에서 예외상황이 발생시 처리하는 객체. 사용하려면 page directive에서 <%-- <%@page isErrorPage="true"%> --%>
   (1) getMessage() : 에러 메세지를 리턴한다. 
   (2) toString()   : 에러 메세지를 String으로 리턴한다.
   (2) printStackTrace(out) : 에러 발생 시, 출력 스트림을 통하여 출력한다.
   
 -->
</body>
</html>