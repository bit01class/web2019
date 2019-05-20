<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>out내장객체</h1>
	<p>작성:스크립트릿</p>
	<p>out - io(output)</p>
	<p><% out.write("출력"); %></p>
	<p><% out.println("출력2"); %></p>
	<% 
	javax.servlet.jsp.JspWriter myOut=out;
	%>
	<%="" %>
	<%
	JspWriter out2=pageContext.getOut();
	
	%>
</body>
</html>














