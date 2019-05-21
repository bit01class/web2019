<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="refresh" content="3; url=http://localhost:8080/web05/board/list.jsp">
<title>Insert title here</title>
</head>
<body>
	<%
	String sub=request.getParameter("sub");
	String content=request.getParameter("content");
	String sql="insert into bbs01 (num,sub,content) ";
	sql+="values (bbs01_seq.nextval,'"+sub+"','"+content+"')";
	//System.out.println(sql);
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user="scott";
	String password="tiger";
	
	Class.forName(driver);
	
	java.sql.Connection conn=null;
	java.sql.Statement stmt=null;
	int result=0;
	
	try{
		conn=DriverManager.getConnection(url,user,password);
		stmt=conn.createStatement();
		result=stmt.executeUpdate(sql);
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	if(result>0){
		out.println("<h1>입력성공</h1>");
	}else{
		out.println("<h1>입력실패</h1>");		
	}
	%>
	
</body>
</html>
















