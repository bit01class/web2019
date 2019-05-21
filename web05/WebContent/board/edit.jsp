<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
String param=request.getParameter("idx");
int num=Integer.parseInt(param);
String sub="";
String content="";
Date nalja=null;
int cnt=0;

String sql="select num,sub,content,nalja,cnt from bbs01 where num="+num;
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
String user="scott";
String password="tiger";

Class.forName(driver);
Connection conn=null;
Statement stmt=null;
ResultSet rs=null;
try{
	conn=DriverManager.getConnection(url, user, password);
	stmt=conn.createStatement();
	rs=stmt.executeQuery(sql);
	if(rs.next()){
		num=rs.getInt(1);
		sub=rs.getString(2);
		content=rs.getString(3);
		nalja=rs.getDate(4);
		cnt=rs.getInt(5);
	}
}finally{
	if(rs!=null)rs.close();
	if(stmt!=null)stmt.close();
	if(conn!=null)conn.close();
}

%>
<body>
	<h1 align="center"><%=num %>번 글 수정</h1>
	<form action="update.jsp">
	<table border="1" cellspacing="0" width="600" align="center">
		<tr>
			<td width="100" align="center" bgcolor="skyblue">글번호</td>
			<td><%=num %><input type="hidden" name="num" value="<%=num %>"></td>
			<td width="100" align="center" bgcolor="skyblue">날짜</td>
			<td><%=nalja %></td>
			<td width="100" align="center" bgcolor="skyblue">조회수</td>
			<td><%=cnt %></td>
		</tr>
		<tr>
			<td align="center" bgcolor="skyblue">제목</td>
			<td colspan="5"><input type="text" name="sub" value="<%=sub%>" size="60"></td>
		</tr>
		<tr height="100">
			<td colspan="6"><textarea name="content" rows="6" cols="80"><%=content %></textarea></td>
		</tr>
		<tr>
			<td  align="center" colspan="6">
				<input type="submit" value="수 정">
				<input type="reset" value="취 소">
				
			</td>
		</tr>
	</table>
	</form>
</body>
</html>







