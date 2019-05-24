<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../template/header.jspf" %>
<%
request.setCharacterEncoding("euc-kr");
//POST방식 한글처리
String method=request.getMethod();// "GET"
if("POST".equals(method)){
	String sub=request.getParameter("sub");
	String id=request.getParameter("id");
	String content=request.getParameter("content");
	
	String sql="insert into bbs03 (num,sub,content,nalja,id) ";
	sql+="values (bbs03_seq.nextval,'"+sub+"','"+content;
	sql+="',sysdate,'"+id+"')";
	Class.forName(driver);
	Connection conn=null;
	Statement stmt=null;
	try{
		conn=DriverManager.getConnection(url, user, password);
		stmt=conn.createStatement();
		int result=stmt.executeUpdate(sql);
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	response.sendRedirect("list.jsp");
}
%>
	<h1 align="center">입력 페이지</h1>
	<center>
	<form method="post">
		<table align="center">
			<tr>
				<td align="center" bgcolor="#E2E2E2">제목</td>
				<td><input type="text" name="sub" size="50"></td>
			</tr>
			<tr>
				<td align="center" bgcolor="#E2E2E2">글쓴이</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><textarea name="content" rows="5" cols="60"></textarea></td>
			</tr>
			<tr>
				<td align="center" colspan="2" bgcolor="#BFB9B6">
					<input type="submit" value="입 력">
					<input type="reset" value="취 소">
				</td>
			</tr>
		</table>
	</form>
	</center>

<%@ include file="../template/footer.jspf" %>
</body>
</html>