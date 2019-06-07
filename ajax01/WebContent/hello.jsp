<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><%=request.getParameter("id") %>님 환영합니다</h3>
	<% System.out.println("통신했습니다"); %>
</body>
</html>