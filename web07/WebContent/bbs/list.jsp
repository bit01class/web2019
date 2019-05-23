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
				<a href="<%=root %>/come.jsp">[오시는길]</a>
				<a href="<%=root %>/bbs/list.jsp">[게 시 판]</a>
				<%
				if(session.getAttribute("login_id")==null){
				%>
				<a href="<%=root %>/user/login.jsp">[로 그 인]</a>
				<%}else{ %>
				<a href="<%=root %>/user/logout.jsp">[로그아웃]</a>
				<%} %>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<h1>게시판</h1>
				<form>
					<select name="option">
						<option value="sub">제목</option>
						<option value="id">글쓴이</option>
					</select>
					<input type="text" name="keyword">
					<input type="submit" value="검색">
				</form>
				<table width="80%" border="1" cellspacing="0" align="center">
					<tr>
						<th width="80">글번호</th>
						<th>글제목</th>
						<th width="100">글쓴이</th>
						<th width="100">날 짜</th>
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
					<input type="submit" value="입 력">
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
						비트캠프 서울시 서초구 강남대로 459 (서초동, 백암빌딩)｜ 사업자등록번호 : 214-85-24928<br>
(주)비트컴퓨터 서초본원 대표이사 : 조현정 / 문의 : 02-3486-9600 / 팩스 : 02-6007-1245<br>
통신판매업 신고번호 : 제 서초-00098호 / 개인정보보호관리책임자 : 최종진<br>
Copyright &copy; 비트캠프 All rights reserved.<br><br><br>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>









