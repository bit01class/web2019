<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="err.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="template/header.jspf" %>
	<h1>인트로페이지</h1>
	
	<%
		String param=request.getParameter("idx");
		int num=0;
		num=Integer.parseInt(param);
	%>
	
	<p><%=num %></p>
	
	<%@ include file="template/footer.jspf" %>
</body>
</html>












