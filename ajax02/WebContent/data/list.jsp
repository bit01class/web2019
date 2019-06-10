<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" contentType="application/xml; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.bit.dto.Bbs04Bean,java.sql.*,com.bit.util.MyOracle"%>
<%
	String sql="SELECT NUM,SUB,NALJA FROM BBS04 ORDER BY NUM DESC";
	ArrayList<Bbs04Bean> list=new ArrayList<Bbs04Bean>();
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	try{
		pstmt=MyOracle.getConnection().prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()){
			Bbs04Bean bean=new Bbs04Bean();
			bean.setNum(rs.getInt("num"));
			bean.setSub(rs.getString("sub"));
			bean.setNalja(rs.getString("nalja"));
			list.add(bean);
		}
	}finally{
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(MyOracle.getConnection()!=null)MyOracle.getConnection().close();
	}
	
%>
<root>
	<%
	for(Bbs04Bean bean : list){
	%>
	<row>
		<num><%=bean.getNum() %></num>
		<sub><%=bean.getSub() %></sub>
		<nalja><%=bean.getNalja() %></nalja>
	</row>
	<%} %>
</root>
