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
			<a href="../login/login.jsp">[로그인]</a>
			<%}else{ %>
			<a href="../login/logout.jsp">[로그아웃]</a>
			<%} %>
			/
			<a href="../login/join.jsp">[회원가입]</a>
			
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
			<td background="../imgs/bgmenu.png" width="80" align="center">[소개]</td>
			<td background="../imgs/bgmenu.png" width="80" align="center"><a href="../bbs/list.jsp">[게시판]</a></td>
			<td background="../imgs/bgmenu.png" width="80" align="center"><a href="./list.jsp">[방명록]</a></td>
			<td background="../imgs/bgmenu.png" width="80" align="center">[로그인]</td>
			<td background="../imgs/bgmenu.png">&nbsp;</td>
		</tr>
		<tr height="200">
			<td colspan="7">
			<!-- MAIN START -->
				<h1 align="center">방명록</h1>
				<table align="center" width="400" border="1" cellspacing="0">
					<%
String sql="select * from guest02 order by num";
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
String user="hr";
String password="hr";

Class.forName(driver);

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
						<td><%=rs.getString(2) %></td>
					</tr>
					<tr>
						<td colspan="2"><%=rs.getString(3) %></td>
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
				<br>
				<center>
				<form action="insert.jsp">
					<label for="id">글쓴이</label>
					<input type="text" name="id" size="40"><br>
					<textarea name="content" rows="3" cols="50"></textarea><br>
					<input type="submit" value="입 력">
					<input type="reset" value="취 소">
				</form>
				</center>
				<br><br><br><br>
			<!-- MAIN END -->
			</td>
		</tr>
		<tr>
			<td bgcolor="#999999" colspan="7">
			<br><br>
			<font color="#ffffff">
			비트캠프 서울시 서초구 강남대로 459 (서초동, 백암빌딩)｜ 사업자등록번호 : 214-85-24928<br>
(주)비트컴퓨터 서초본원 대표이사 : 조현정 / 문의 : 02-3486-9600 / 팩스 : 02-6007-1245<br>
통신판매업 신고번호 : 제 서초-00098호 / 개인정보보호관리책임자 : 최종진<br>
Copyright (c) 비트캠프 All rights reserved.
			</font>
			<br><br><br>
			</td>
		</tr>
	</table>
</body>
</html>














