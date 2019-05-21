<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*,oracle.jdbc.driver.OracleDriver"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Guest Book</h1>
	
	<table border="1" width="600">
	
		<%
		String sql="select name,ip,num,content from guest01";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		
		OracleDriver driver=new OracleDriver();
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		try{
		conn=DriverManager.getConnection(url, user, password);
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()){
		%>
		<tr>
			<td width="80">글쓴이</td>
			<td><%=rs.getObject(1) %></td>
			<td width="80">ip</td>
			<td><%=rs.getObject(2) %></td>
			<td rowspan="2" width="50">
				<form action="delete.jsp">
				<input type="hidden" name="num" value="<%=rs.getObject(3) %>">
				<input type="submit" value="삭제">
				</form>
			</td>
		</tr>
		<tr>
			<td><%=rs.getObject(3) %></td>
			<td colspan="3"><%=rs.getObject(4) %></td>
		</tr>
		<%
		}
		}finally{
			if(rs!=null)rs.close();
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
		%>
	</table>
	
	<form action="insert.jsp">
		<table>
			<tr>
				<td>
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td>
					<textarea name="content" rows="3" cols="60"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="글남기기">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
























