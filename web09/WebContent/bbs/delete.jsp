<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.bit.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String param=request.getParameter("idx");
	int num=Integer.parseInt(param);
	
	Bbs04Dao dao=new Bbs04Dao();
	dao.delete(num);
	response.sendRedirect("list.jsp");
	%>
</body>
</html>
















