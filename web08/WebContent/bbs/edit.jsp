<%@page import="java.util.concurrent.ExecutionException"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../template/header.jspf" %>

<%!
	Connection conn;
	Statement stmt;
	ResultSet rs;
%>
<%
	request.setCharacterEncoding("euc-kr");
	class Row{
		int num;
		String id;
		String sub;
		String content;
		Date nalja;
		
		public String getNalja(){
			String msg=(nalja.getYear()+1900)+"년"
						+(nalja.getMonth()+1)+"월"
						+nalja.getDate()+"일 ";
			//long t=nalja.getTime();
			//java.util.Date d=new java.util.Date(t);
			//System.out.println(d);
			return msg;
		}
	}
	Row row=new Row();
	String param=request.getParameter("idx");
	int num=0;
	try{
		num=Integer.parseInt(param);
	}catch(Exception e){
		response.sendRedirect("list.jsp");
		return;
	}
	
	//String id="-";
	//String sub="-";
	//String content="-";
	//Date nalja=null;
	Class.forName(driver);
	String method=request.getMethod();
	if("GET".equals(method)){
	String sql="select * from bbs03 where num="+num;
	try{
		conn=DriverManager.getConnection(url, user, password);
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		if(rs.next()){
			/* 
			sub=rs.getString("sub");
			content=rs.getString("content");
			nalja=rs.getDate("nalja");
			id=rs.getString("id"); 
			*/
			row.num=rs.getInt("num");
			row.sub=rs.getString("sub");
			row.content=rs.getString("content");
			row.nalja=rs.getDate("nalja");
			row.id=rs.getString("id"); 
		}else{
			response.sendRedirect("list.jsp");
			return;
		}
	}finally{
		if(rs!=null)rs.close();
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
%>
	<h1 align="center">수정 페이지</h1>
	<form method="post">
	<table width="80%" align="center">
		<tr>
			<td bgcolor="#E2E2E2" width="100">글번호</td>
			<td><%=row.num %><input type="hidden" name="num" value="<%=row.num %>"></td>
			<td bgcolor="#E2E2E2" width="100">글쓴이</td>
			<td><%=row.id %></td>
			<td bgcolor="#E2E2E2" width="100">작성일</td>
			<td><%=row.getNalja() %></td>
		</tr>
		<tr>
			<td bgcolor="#E2E2E2">제목</td>
			<td colspan="5"><input type="text" name="sub" value="<%=row.sub %>"></td>
		</tr>
		<tr>
			<td colspan="6"><textarea name="content" rows="5" cols="60"><%=row.content %></textarea></td>
		</tr>
		<tr>
			<td colspan="6" bgcolor="#BFB9B6">
				<input type="submit" value="수 정">
				<input type="reset" value="취 소">
			</td>
		</tr>
		
	</table>
	</form>
	<br>
	<br>
	<br>
	
<%
	}else{
		String sub=request.getParameter("sub");
		String content=request.getParameter("content");
		
		PreparedStatement pstmt=null;
		String sql="update bbs03 set sub=?,content=? where num=?";
		try{
			conn=DriverManager.getConnection(url, user, password);
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, sub);
			pstmt.setString(2, content);
			pstmt.setInt(3, num);
			int result=pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		response.sendRedirect("detail.jsp?idx="+num);
	}

%>	
<%@ include file="../template/footer.jspf" %>
</body>
</html>












