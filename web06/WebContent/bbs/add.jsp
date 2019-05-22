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
			<td background="../imgs/bgmenu.png" width="80" align="center"><a href="./list.jsp">[게시판]</a></td>
			<td background="../imgs/bgmenu.png" width="80" align="center"><a href="../guest/list.jsp">[방명록]</a></td>
			<td background="../imgs/bgmenu.png" width="80" align="center">[로그인]</td>
			<td background="../imgs/bgmenu.png">&nbsp;</td>
		</tr>
		<tr height="200">
			<td colspan="7">
			<!-- MAIN START -->
				<h1 align="center">게시판 입력</h1>
				<form action="insert.jsp">
					<table align="center">
						<tr>
							<td align="center" bgcolor="#aaaaaa">제목</td>
							<td>
								<input type="text" name="sub">
							</td>
						</tr>
						<tr>
							<td align="center" bgcolor="#aaaaaa">글쓴이</td>
							<td>
								<input type="text" name="id">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<textarea name="content" rows="5" cols="50"></textarea>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center" bgcolor="#aaaaaa">
								<input type="submit" value="입 력">
								<input type="reset" value="취 소">
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














