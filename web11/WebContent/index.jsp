<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String msg="main.jsp";
		String param=request.getParameter("page");
		String idx=request.getParameter("idx");
		if(param!=null){
			msg="bbs/"+param+".jsp";		
		}
	%>
	<table width="800" align="center">
		<tr>
			<td>
				<img alt="logo" src="imgs/logo.png">
			</td>
		</tr>
		<tr>
			<td bgcolor="#dddddd">
				<a href="./">[HOME]</a>
				<a href="./?page=list">[B B S]</a>
				<a href="#">[LOGIN]</a>
				<a href="#">[E T C]</a>
			</td>
		</tr>
		<tr>
			<td>
				<jsp:include page="<%=msg %>">
					<jsp:param value="<%=idx %>" name="num"/>
				</jsp:include>
			</td>
		</tr>
		<tr>
			<td bgcolor="#cccccc">
			Copyright &copy; 비트캠프 All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>








