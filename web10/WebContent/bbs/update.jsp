<%@page import="oracle.jdbc.OracleTypes"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*,com.bit.util.MyOracle"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");	
	%>
	<jsp:useBean id="bean" class="com.bit.dto.Bbs03Bean"></jsp:useBean>
	<jsp:setProperty property="*" name="bean"/>
	<%
		String sql="{call bbs03update(?,?,?,?)}";
		Connection conn=null;
		CallableStatement cstmt=null;
		int result=0;
		try{
			conn=MyOracle.getConnection();
			cstmt=conn.prepareCall(sql);
			cstmt.registerOutParameter(1, OracleTypes.INTEGER);
			cstmt.setInt(2, bean.getNum());
			cstmt.setString(3, bean.getSub());
			cstmt.setString(4, bean.getContent());
			cstmt.execute();
			result=cstmt.getInt(1);
		}finally{
			if(cstmt!=null)cstmt.close();
			if(conn!=null)conn.close();
		}
		if(result>0){
			response.sendRedirect("detail.jsp?num="+bean.getNum());
		}else{
			response.sendRedirect("update.jsp?num="+bean.getNum());
		}
	%>
</body>
</html>


















