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
				<h1 align="center">회원가입 페이지</h1>
				<form action="join_result.jsp">
					<table align="center">
						<tr>
							<td bgcolor="#aa0000">원하시는 아이디</td>
							<td><input type="text" name="id"></td>
						</tr>
						<tr>
							<td bgcolor="#aa0000">패스워드</td>
							<td><input type="password" name="pw"></td>
						</tr>
						<tr>
							<td bgcolor="#aa0000">패스워드 재입력</td>
							<td><input type="password" name="re"></td>
						</tr>
						<tr>
							<td bgcolor="#aa0000">이름</td>
							<td><input type="text" name="name"></td>
						</tr>
						<tr>
							<td bgcolor="#aaaaaa">반을 선택</td>
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
							<td bgcolor="#aaaaaa">전화번호</td>
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
							<input type="submit" value="회원가입">
							<input type="reset" value="취 소">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<i>붉은색 항목은 필수입니다</i>
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














