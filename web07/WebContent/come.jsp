<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
				<img alt="main" src="imgs/comming.jpg">
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









