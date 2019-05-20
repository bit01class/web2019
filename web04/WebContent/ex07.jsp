<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>request 내장객체</h1>
	<p>웹 브라우저가 웹 서버에 전송한 요청 관련 정보 제공</p>
	<p>주요 기능</p>
	<ol>
		<li>클라이언트(웹 브라우저)와 관련된 정보 읽기 기능</li>
		<li>서버와 관련된 정보 읽기 기능</li>
		<li>클라이언트가 전송한 요청 파라미터 읽기 기능</li>
		<li>클라이언트가 전송한 요청 헤더 읽기 기능</li>
		<li>클라이언트가 전송한 쿠키 읽기 기능</li>
		<li>속성 처리 기능</li>	
	</ol>
	<% String ctxt=request.getContextPath(); %>
	<a href="<%=ctxt %>/ex08.jsp?id=aa&pw=bb&name=cc">link</a>
	<%
	System.out.println("-----------------------------");
		String id=request.getRemoteAddr();
		int port=request.getRemotePort();
		System.out.print(id+":"+port);
		String method=request.getMethod();
		System.out.println(method);
		
		String uri=request.getRequestURI();
		System.out.println(uri);
		String context=request.getContextPath();
		System.out.println(context);
		
		String serveName=request.getServerName();
		int servePort=request.getServerPort();
		System.out.println(serveName+":"+servePort);
		
	%>
	
	
</body>
</html>
















