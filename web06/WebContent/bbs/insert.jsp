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
	// get방식 한글처리
	// server > server.xml
	// port="8080" URIEncoding="EUC-KR" 
	String sub=request.getParameter("sub");
	System.out.println(sub);
	String content=request.getParameter("content");
	String id=request.getParameter("id");
	String ip=request.getRemoteAddr();
	String sql="insert into bbs02 (num,sub,content,id,ip) ";
	sql+="values (bbs02_seq.nextval,'"+sub+"','"+content;
	sql+="','"+id+"','"+ip+"')";
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

















