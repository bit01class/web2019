<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<%
	String param=request.getParameter("num");
	int num=Integer.parseInt(param);
	String sub=request.getParameter("sub");
	String content=request.getParameter("content");
	
	String sql="update bbs01 set sub='";
	sql+=sub+"', content='"+content+"' where num="+num;
	//System.out.println(sql);
	
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user="scott";
	String password="tiger";
	
	Class.forName(driver);
	Connection conn=null;
	Statement stmt=null;
	int result=0;
	try{
		conn=DriverManager.getConnection(url,user,password);
		stmt=conn.createStatement();
		result=stmt.executeUpdate(sql);
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="refresh" content="3; url=http://localhost:8080/web05/board/detail.jsp?idx=<%=num%>">
<title>Insert title here</title>
</head>
<body>
	<%
	if(result>0){
	%>
	<h1>수정성공</h1>
	<%}else{ %>
	<h1>수정실패</h1>
	<%} %>
</body>
</html>










