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
				<h1 align="center">ȸ������ ������</h1>
				<form action="join_result.jsp">
					<table align="center">
						<tr>
							<td bgcolor="#aa0000">���Ͻô� ���̵�</td>
							<td><input type="text" name="id"></td>
						</tr>
						<tr>
							<td bgcolor="#aa0000">�н�����</td>
							<td><input type="password" name="pw"></td>
						</tr>
						<tr>
							<td bgcolor="#aa0000">�н����� ���Է�</td>
							<td><input type="password" name="re"></td>
						</tr>
						<tr>
							<td bgcolor="#aa0000">�̸�</td>
							<td><input type="text" name="name"></td>
						</tr>
						<tr>
							<td bgcolor="#aaaaaa">���� ����</td>
							<td><select name="class">
									<option>class01</option>
									<option>class02</option>
									<option selected="selected">class03</option>
									<option>class04</option>
									<option>class05</option>
									<option>class06</option>
									<option>class07</option>
							</select></td>
						</tr>
						<tr>
							<td bgcolor="#aaaaaa">��ȭ��ȣ</td>
							<td><select name="tel0">
								<option>010</option>
								<option>011</option>
								<option>017</option>
								<option>019</option>
								<option>070</option>
							</select>
							-
							<input type="text" name="tel1" size="4">
							-
							<input type="text" name="tel2" size="4"></td>
						</tr>
						<tr>
							<td colspan="2" bgcolor="#aaaaaa" align="center">
							<input type="submit" value="ȸ������">
							<input type="reset" value="�� ��">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<i>������ �׸��� �ʼ��Դϴ�</i>
								<p></p>
							</td>
						</tr>
					</table>
					
				</form>
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














