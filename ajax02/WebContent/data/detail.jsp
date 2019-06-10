<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" contentType="application/xml; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,com.bit.util.*,com.bit.dto.*"%>

<%
	Bbs04Bean bean=new Bbs04Bean();
	String param=request.getParameter("idx");
	String sql="SELECT * FROM BBS04 WHERE NUM=?";
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	try{
		conn=MyOracle.getConnection();
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,Integer.parseInt(param));		
		rs=pstmt.executeQuery();
		while(rs.next()){
			bean.setNum(rs.getInt("num"));
			bean.setSub(rs.getString("sub"));
			bean.setContent(rs.getString("content"));
			bean.setNalja(rs.getString("nalja"));
		}
	}finally{
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
%>
<root>
	<row>
		<num><%=bean.getNum() %></num>
		<sub><%=bean.getSub() %></sub>
		<content><%=bean.getContent() %></content>
		<nalja><%=bean.getNalja() %></nalja>
	</row>
</root>








