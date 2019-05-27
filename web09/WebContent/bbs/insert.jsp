<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.bit.model.Bbs04Dao" errorPage="../err.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");
		String sub=request.getParameter("sub");
		String content=request.getParameter("content");
		
		Bbs04Dao dao=new Bbs04Dao();
		dao.addList(sub,content); 
		response.sendRedirect("list.jsp");
	%>
</body>
</html>












