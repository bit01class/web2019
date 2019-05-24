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
	<h1 align="center">삭제하시겠습니까?</h1>
	<center>
	<form method="post">
		<input type="hidden" name="num" value="<%=request.getParameter("idx")%>">
		<input type="submit" value="삭 제">
	</form>
	</center>
	<%@ include file="../template/footer.jspf" %>
	<%
	String method=request.getMethod();
	if("POST".equals(method)){
		String param=request.getParameter("num");
		int num=Integer.parseInt(param);
		Class.forName(driver);
		Connection conn=null;
		PreparedStatement pstmt=null;
		try{
			conn=DriverManager.getConnection(url, user, password);
			pstmt=conn.prepareStatement("delete from bbs03 where num=?");
			pstmt.setInt(1, num);
			int result=pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		response.sendRedirect("list.jsp");
	}
	%>
</body>
</html>












