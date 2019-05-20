<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>response 내장객체</h1>
	<p>웹 브라우저에 전송하는 응답 정보 설정</p>
	<p>주요 기능</p>
	<ol>
		<li>헤더 정보 입력</li>
		<li>리다이렉트 처리</li>
	</ol>
	<%
	response.setContentType("text/plan; charset=euc-kr");
	ServletOutputStream myOut=response.getOutputStream();
	myOut.write("<h2>test</h2>".getBytes());
	myOut.flush();
	myOut.close();
	%>
</body>
</html>














