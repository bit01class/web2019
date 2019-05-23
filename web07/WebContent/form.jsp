<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form>
		<input type="text" name="msg">
		<input type="submit" value="전달">
	</form>
	<a href="form.jsp?msg=%B0%A1">me</a>
	<%
	String msg="가";//%B0 %A1
	String result=java.net.URLEncoder.encode(msg);
	System.out.println(result);
	String result2=java.net.URLDecoder.decode(result);
	System.out.println(result2);
	%>
</body>
</html>