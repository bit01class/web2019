<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
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
				%>
				<a href="<%=root %>/user/login.jsp">[�� �� ��]</a>
				<%}else{ %>
				<a href="<%=root %>/user/logout.jsp">[�α׾ƿ�]</a>
				<%} %>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<h1>�Խ���</h1>
				<form>
					<select name="option">
						<option value="sub">����</option>
						<option value="id">�۾���</option>
					</select>
					<input type="text" name="keyword">
					<input type="submit" value="�˻�">
				</form>
				<table width="80%" border="1" cellspacing="0" align="center">
					<tr>
						<th width="80">�۹�ȣ</th>
						<th>������</th>
						<th width="100">�۾���</th>
						<th width="100">�� ¥</th>
					</tr>
<%
String option=request.getParameter("option");
if(option==null){
	option="sub";
}
String keyword=request.getParameter("keyword");
if(keyword==null){
	keyword="";
}
String sql="select * from bbs03 where "+option+" like'%";
sql+=keyword+"%' order by num desc";
Connection conn=null;
Statement stmt=null;
ResultSet rs=null;

try{
	conn=com.bit.db.MyOracle.getConnection();
	stmt=conn.createStatement();
	rs=stmt.executeQuery(sql);
	int cnt=0;
	while(rs.next()){
		cnt++;
		String ele="";
		if(cnt%2==0){
			ele=" bgcolor=\"#ffff90\"";
		}
%>					
					<tr>
						<td <%=ele %>><%=rs.getInt("num") %></td>
						<td <%=ele %>><a href="detail.jsp?idx=<%=rs.getInt("num") %>"><%=rs.getString("sub") %></a></td>
						<td <%=ele %>><%=rs.getString("id") %></td>
						<td <%=ele %>><%=rs.getDate("nalja") %></td>
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
				
				<form action="add.jsp">
					<input type="submit" value="�� ��">
				</form>
				
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









