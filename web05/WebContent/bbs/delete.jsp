<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.Connection,java.sql.Statement" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	
	String num=request.getParameter("num");
	String sql="delete from guest01 where num="+num;
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	
	new oracle.jdbc.driver.OracleDriver();
	Connection conn=null;
	Statement stmt=null;
	int result=0;
	try{
		conn=DriverManager.getConnection(url, user, password);
		stmt=conn.createStatement();
		result=stmt.executeUpdate(sql);
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	String msg="��������";
	if(result>0){
		msg="��������";
	}
	%>
	<h1><%=msg %></h1>
	<a href="guest.jsp">���ư���</a>
</body>
</html>




















