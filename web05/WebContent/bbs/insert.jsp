<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	new oracle.jdbc.driver.OracleDriver();
	String name=request.getParameter("name");
	String content=request.getParameter("content");
	String ip=request.getRemoteAddr();
	String sql="insert into guest01 values ((select max(num)+1 from guest01),'"
					+name+"','"+content+"','"+ip+"')";
	
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	
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
	if(result>0){
		out.print("<h1>입력성공</h1>");
	}else{
		out.print("<h1>입력실패</h1>");
	}
	%>
	
	<a href="guest.jsp">돌아가기</a>
</body>
</html>

























