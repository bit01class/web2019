<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*,com.bit.db.MyOracle"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
	String root=request.getContextPath();
%>
<body>
	<table width="100%">
		<tr>
			<td>
			<img alt="logo" src="<%=root %>/imgs/logo.png">
			</td>
		</tr>
		<tr>
			<td align="center" bgcolor="#f0f0f0">
				<a href="<%=root %>/">[HOME]</a>
				<a href="<%=root %>/come.jsp">[���ô±�]</a>
				<a href="<%=root %>/bbs/list.jsp">[�� �� ��]</a>
				<%
				if(session.getAttribute("login_id")==null){
					response.sendRedirect("../user/login.jsp");
				%>
				<a href="<%=root %>/user/login.jsp">[�� �� ��]</a>
				<%}else{ %>
				<a href="<%=root %>/user/logout.jsp">[�α׾ƿ�]</a>
				<%
				
String param=request.getParameter("idx");				
String sql="select * from bbs03 where num="+param;				
int num=0;
String sub="";
String content="";
String id="";
Date nalja=null;

Connection conn=null;				
Statement stmt=null;
ResultSet rs=null;
try{
	conn=MyOracle.getConnection();
	stmt=conn.createStatement();
	rs=stmt.executeQuery(sql);
	if(rs.next()){
		nalja=rs.getDate("nalja");
		sub=rs.getString("sub");
		id=rs.getString("id");
		content=rs.getString("content");
		num=rs.getInt("num");
	}
}finally{
	if(stmt!=null)stmt.close();
	if(conn!=null)conn.close();
}
				
				%>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<h1>�󼼺���</h1>
				<table width="80%">
					<tr>
						<td bgcolor="#f0f0f0" width="100">����</td>
						<td colspan="5"><%=sub %></td>
					</tr>
					<tr>
						<td bgcolor="#f0f0f0">�۹�ȣ</td>
						<td><%=num %></td>
						<td bgcolor="#f0f0f0" width="100">�ۼ���</td>
						<td><%=id %></td>
						<td bgcolor="#f0f0f0" width="100">��¥</td>
						<td><%=nalja %></td>
					</tr>
					<tr>
						<td colspan="6"><pre><%if(content!=null)out.print(content); %></pre></td>
					</tr>
					<tr>
						<td bgcolor="#f0f0f0" colspan="6">
							<a href="edit.jsp?num=<%=num%>&sub=<%=sub%>&id=<%=id%>&content=<%=content%>&nalja=<%=nalja%>">[�� ��]</a>
							<form action="delete.jsp" method="post">
							<input type="hidden" name="num" value="<%=num%>">
							<input type="submit" value="�� ��">
							</form>
						</td>
					</tr>
				</table>
				</center>
			</td>
		</tr>
		<tr>
			<td>
				<table align="center">
					<tr>
						<td><img alt="logo2" src="<%=root %>/imgs/logo2.jpg"></td>
						<td><br><br><br>
						��Ʈķ�� ����� ���ʱ� ������� 459 (���ʵ�, ��Ϻ���)�� ����ڵ�Ϲ�ȣ : 214-85-24928<br>
(��)��Ʈ��ǻ�� ���ʺ��� ��ǥ�̻� : ������ / ���� : 02-3486-9600 / �ѽ� : 02-6007-1245<br>
����Ǹž� �Ű��ȣ : �� ����-00098ȣ / ����������ȣ����å���� : ������<br>
Copyright &copy; ��Ʈķ�� All rights reserved.<br><br><br>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>

<%} %>







