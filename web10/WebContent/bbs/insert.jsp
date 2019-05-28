<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*,com.bit.util.MyOracle"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bean" class="com.bit.dto.Bbs03Bean"></jsp:useBean>
	<jsp:setProperty property="sub" name="bean"/>
	<jsp:setProperty property="id" name="bean"/>
	<jsp:setProperty property="content" name="bean"/>
	
	<%
	//final String SQL="insert into bbs03 values(bbs03_seq.nextval,?,?,?,sysdate)";
	Connection conn=null;
	CallableStatement cstmt=null;
	String sql="{call bbs03insert('"+bean.getSub();
	sql+="','"+bean.getId()+"','"+bean.getContent()+"')}";
	try{
		conn=MyOracle.getConnection();
		cstmt=conn.prepareCall(sql);
		cstmt.execute();
	}finally{
		if(cstmt!=null)cstmt.close();
		if(conn!=null)conn.close();
	}
	response.sendRedirect("list.jsp");
	%>
	
</body>
</html>













