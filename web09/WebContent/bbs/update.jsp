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
		String param=request.getParameter("num");
		int num=Integer.parseInt(param);
		String sub=request.getParameter("sub");
		String content=request.getParameter("content");
		
		Bbs04Dao dao=new Bbs04Dao(); 
		int result=dao.update(num,sub,content);
		if(result>0){
			response.sendRedirect("detail.jsp?idx="+num);
		}else{
			response.sendRedirect("edit.jsp?idx="+num);
		}
	%>
</body>
</html>













