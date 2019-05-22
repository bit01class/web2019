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
			<td background="../imgs/bgmenu.png" width="80" align="center"><a href="../guest/list.jsp">[방명록]</a></td>
			<td background="../imgs/bgmenu.png" width="80" align="center">[로그인]</td>
			<td background="../imgs/bgmenu.png">&nbsp;</td>
		</tr>
		<tr height="200">
			<td colspan="7">
			<!-- MAIN START -->
			<%
String msg="<h1 align=\"center\">가입 실패</h1>";
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
	msg="<h1 align=\"center\">Err) 접속오류</h1>";
	msg+="<p align=\"center\">빠른시일에 조치하겠습니다</p>";
	msg+="<p align=\"center\">관리자에게 문의하세요</p>";
	msg+="<p align=\"center\">문의)080-1588-9999</p>";
}finally{
	if(stmt!=null)stmt.close();
	if(conn!=null)conn.close();
}
if(result>0){
	msg="<h1 align=\"center\">"+name+"님 가입을 축하드립니다</h1>";
	msg+="<center><a href=\"login.jsp\">로그인 페이지로 이동</a></center>";
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














