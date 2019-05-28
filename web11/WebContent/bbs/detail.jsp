<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.bit.util.MyOracle" %>
<%@ page import="oracle.jdbc.OracleTypes" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bean" class="com.bit.dto.Bbs03Bean"></jsp:useBean>
	<jsp:setProperty property="num" name="bean"/>
	<%
	String sql="{call bbs03detail(?,?)}";
	Connection conn=null;
	CallableStatement cstmt=null;
	ResultSet rs=null;
	try{
		conn=MyOracle.getConnection();
		cstmt=conn.prepareCall(sql);
		cstmt.setInt(1, bean.getNum());
		cstmt.registerOutParameter(2, OracleTypes.CURSOR);
		cstmt.execute();
		rs=(ResultSet)cstmt.getObject(2);
		if(rs.next()){
			bean.setSub(rs.getString("sub"));
			bean.setContent(rs.getString("content"));
			bean.setId(rs.getString("id"));
			bean.setNalja(rs.getTimestamp("nalja"));
		}
	}finally{
		if(rs!=null)rs.close();
		if(cstmt!=null)cstmt.close();
		if(conn!=null)conn.close();
	}
	
	%>
	
	<h1 align="center">상세페이지</h1>
	<table width="80%" align="center">
		<tr>
			<td>글번호</td>
			<td><jsp:getProperty property="num" name="bean"/></td>
			<td>글쓴이</td>
			<td><jsp:getProperty property="id" name="bean"/></td>
			<td>날짜</td>
			<td><jsp:getProperty property="nalja" name="bean"/></td>
		</tr>
		<tr>
			<td>제목</td>
			<td colspan="5"><jsp:getProperty property="sub"	 name="bean"/></td>
		</tr>
		<tr>
			<td bgcolor="#cccccc" colspan="6"><pre><jsp:getProperty property="content" name="bean"/></pre></td>
		</tr>
		<tr>
			<td colspan="6">
				<a href="./?page=edit&idx=<jsp:getProperty property="num" name="bean"/>">[수 정]</a>
				<a href="./delete.jsp?idx=<jsp:getProperty property="num" name="bean"/>">[삭 제]</a>
			</td>
		</tr>
	</table>
</body>
</html>


















