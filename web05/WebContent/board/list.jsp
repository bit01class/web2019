<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">게시판</h1>
	<table align="center" border="1" cellspacing="0" width="600">
	
		<tr>
			<th width="80">글번호</th>
			<th>제목</th>
			<th width="120">날짜</th>
			<th width="80">조회수</th>
		</tr>
		<%
		String sql="select num,sub,nalja,cnt from bbs01 order by num desc";
		String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String user="scott";
		String password="tiger";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
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
			<td><%=rs.getInt(1) %></td>
			<td><a href="detail.jsp?idx=<%=rs.getInt(1) %>"><%
			String sub=rs.getString(2);
			if(sub.length()>10){
				sub=sub.substring(0, 10);
				sub+="...";
			}
			out.print(sub);			
			%></a></td>
			<td><%=rs.getDate(3)%></td>
			<td><%=rs.getInt(4) %></td>
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
	<center>
	<a href="add.jsp">[입 력]</a>
	</center>
</body>
</html>








