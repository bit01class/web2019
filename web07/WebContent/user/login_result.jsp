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
String id=request.getParameter("id");
if(id.contains("--") || id.contains(",")|| id.contains(")")){
	response.sendRedirect("login.jsp");
}else{
				
String pw=request.getParameter("pw");
String sql="select name from user03 where id='"+id+"' and pw='"+pw+"'";
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String password="hr";

System.out.println(sql);

Class.forName(driver);
Connection conn=null;
Statement stmt=null;
ResultSet rs=null;
String name=null;

try{
	conn=DriverManager.getConnection(url,user,password);
	stmt=conn.createStatement();
	rs=stmt.executeQuery(sql);
	if(rs.next())name=rs.getString(1);
}finally{
	if(rs!=null)rs.close();
	if(stmt!=null)stmt.close();
	if(conn!=null)conn.close();
}
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
				<%
if(name==null){
	out.print("<h1>�α��� ����</h1>");
}else{
	out.print("<h1>"+name+"�� �α��� �Ǿ����ϴ�</h1>");
	session.setAttribute("login_user", name);
	session.setAttribute("login_id",id);
}
}
				%>
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









