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
	String id=request.getParameter("id");
	String content=request.getParameter("content");
	String sql="insert into guest02 values ";
			sql+="((select max(num)+1 from guest02),'";
			sql+=id+"','"+content+"')";
	//System.out.println(sql);
	
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user="hr";
	String password="hr";
	
	Class.forName(driver);
	Connection conn=null;
	Statement stmt=null;
	
	try{
		conn=DriverManager.getConnection(url, user, password);
		stmt=conn.createStatement();
		stmt.executeUpdate(sql);
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	
	response.sendRedirect("list.jsp");
	%>
</body>
</html>













