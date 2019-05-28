<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*,com.bit.util.MyOracle"%>
<%@ page import="java.util.ArrayList,com.bit.dto.Bbs03Bean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		//final String SQL="SELECT * FROM BBS03 ORDER BY NUM DESC";
		ArrayList<Bbs03Bean> list=new ArrayList<Bbs03Bean>();
		Connection conn=null;
		//PreparedStatement pstmt=null;
		ResultSet rs=null;
		CallableStatement cstmt=null;
		String sql="{call bbs03list(?)}";
		try{
			conn=MyOracle.getConnection();
			//pstmt=conn.prepareStatement(SQL);
			//rs=pstmt.executeQuery();
			cstmt=conn.prepareCall(sql);
			cstmt.registerOutParameter(1, oracle.jdbc.OracleTypes.CURSOR);
			cstmt.execute();
			rs=(ResultSet)cstmt.getObject(1);
			while(rs.next()){
				Bbs03Bean bean=new Bbs03Bean();
				bean.setNum(rs.getInt("num"));
				bean.setSub(rs.getString("sub"));
				bean.setId(rs.getString("id"));
				bean.setNalja(rs.getTimestamp("nalja"));
				list.add(bean);
			}
		}finally{
			if(rs!=null)rs.close();
			if(cstmt!=null)cstmt.close();
			//if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	%>

	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	<h1>리스트 페이지</h1>
	<table width="80%" align="center" border="1" cellspacing="0">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
		</tr>
		<%
		for(int i=0; i<list.size(); i++){
			Bbs03Bean bean=list.get(i);
		%>
		<tr>
			<td><%=bean.getNum() %></td>
			<td><a href="detail.jsp?num=<%=bean.getNum() %>"><%=bean.getSub() %></a></td>
			<td><%=bean.getId() %></td>
			<td><%=bean.getNalja() %></td>
		</tr>
		<%} %>
	</table>
	<center>
		<a href="add.jsp">[입 력]</a>
	</center>
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>













