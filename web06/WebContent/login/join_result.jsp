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
			<%
String msg="<h1 align=\"center\">���� ����</h1>";
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
String user="hr";
String password="hr";

Class.forName(driver);
Connection conn=null;
Statement stmt=null;
ResultSet rs=null;
int result=0;
int overlap=1;

String id=request.getParameter("id");
String pw=request.getParameter("pw");
String re=request.getParameter("re");

String name=request.getParameter("name");
name=name.trim();
if(name.length()==0){
	response.sendRedirect("join.jsp?err=nameErr");
}

String clss=request.getParameter("class");
String tel0=request.getParameter("tel0");
String tel1=request.getParameter("tel1");
String tel2=request.getParameter("tel2");
String tel=tel0+tel1+tel2;

String sql="insert into user02 values (user02_seq.nextval,'";
sql+=id+"','"+pw+"','"+name+"','"+clss+"','"+tel+"')";

//System.out.println(sql);
			

try{
	conn=DriverManager.getConnection(url, user, password);
	stmt=conn.createStatement();
	result=stmt.executeUpdate(sql);
}catch(SQLException e){
	//response.sendRedirect("join.jsp");
	msg="<h1 align=\"center\">Err) ���ӿ���</h1>";
	msg+="<p align=\"center\">�������Ͽ� ��ġ�ϰڽ��ϴ�</p>";
	msg+="<p align=\"center\">�����ڿ��� �����ϼ���</p>";
	msg+="<p align=\"center\">����)080-1588-9999</p>";
}finally{
	if(stmt!=null)stmt.close();
	if(conn!=null)conn.close();
}
if(result>0){
	msg="<h1 align=\"center\">"+name+"�� ������ ���ϵ帳�ϴ�</h1>";
	msg+="<center><a href=\"login.jsp\">�α��� �������� �̵�</a></center>";
}			
			%>
				<%=msg %>
				
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














