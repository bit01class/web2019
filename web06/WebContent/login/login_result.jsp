<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="800" align="center" border="0" cellspacing="0">
		<tr>
			<td colspan="7" align="right">
			<% 
			String msg="�α��� ����";
			String id=request.getParameter("id");
			String pw=request.getParameter("pw");
			String name="�մ�";

			String sql="select count(num) from user02 where id='"+id+"' and pw='"+pw+"'";
			String driver="oracle.jdbc.driver.OracleDriver";
			String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String user="hr";
			String password="hr";
			int result=0;
			Class.forName(driver);
			Connection conn=null;
			Statement stmt=null;
			ResultSet rs=null;

			try{
				conn=DriverManager.getConnection(url, user, password);
				stmt=conn.createStatement();
				rs=stmt.executeQuery(sql);
				if(rs.next()){
					result=rs.getInt(1);
				}
			}finally{
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			}
			if(result>0){
				msg=id+"�� �α��� �ϼ̽��ϴ�";
				session.setAttribute("login", true);
			}
			
			if(session.getAttribute("login")==null){
			%>
			<a href="../login/login.jsp">[�α���]</a>
			<%}else{ %>
			<a href="../login/logout.jsp">[�α׾ƿ�]</a>
			<%} %>
			/
			<a href="../login/join.jsp">[ȸ������]</a>
			
			</td>
		</tr>
		<tr>
			<td colspan="7" align="center">
			<img alt="logo" src="../imgs/logo.png">
			</td>
		</tr>
		<tr>
			<td background="../imgs/bgmenu.png">&nbsp;</td>
			<td background="../imgs/bgmenu.png" width="80" align="center"><a href="../">[HOME]</a></td>
			<td background="../imgs/bgmenu.png" width="80" align="center">[�Ұ�]</td>
			<td background="../imgs/bgmenu.png" width="80" align="center"><a href="../bbs/list.jsp">[�Խ���]</a></td>
			<td background="../imgs/bgmenu.png" width="80" align="center"><a href="../guest/list.jsp">[����]</a></td>
			<td background="../imgs/bgmenu.png" width="80" align="center">[�α���]</td>
			<td background="../imgs/bgmenu.png">&nbsp;</td>
		</tr>
		<tr height="200">
			<td colspan="7">
			<!-- MAIN START -->
				<h1 align="center"><%=msg %></h1>
				<br><br><br><br><br>
			<!-- MAIN END -->
			</td>
		</tr>
		<tr>
			<td bgcolor="#999999" colspan="7">
			<br><br>
			<font color="#ffffff">
			��Ʈķ�� ����� ���ʱ� ������� 459 (���ʵ�, ��Ϻ���)�� ����ڵ�Ϲ�ȣ : 214-85-24928<br>
(��)��Ʈ��ǻ�� ���ʺ��� ��ǥ�̻� : ������ / ���� : 02-3486-9600 / �ѽ� : 02-6007-1245<br>
����Ǹž� �Ű��ȣ : �� ����-00098ȣ / ����������ȣ����å���� : ������<br>
Copyright (c) ��Ʈķ�� All rights reserved.
			</font>
			<br><br><br>
			</td>
		</tr>
	</table>
</body>
</html>














