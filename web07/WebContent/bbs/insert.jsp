<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*,com.bit.db.MyOracle"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String sub=request.getParameter("sub");
	String id=request.getParameter("id");
	String content=request.getParameter("content");
	String sql="insert into bbs03 (num,sub,id,content,nalja) values ";
	sql+="(bbs03_seq.nextval,'"+sub+"','"+id+"','"+content+"',sysdate)";
	System.out.println();
	Connection conn=null;
	Statement stmt=null;
	
	try{
		conn=MyOracle.getConnection();
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











