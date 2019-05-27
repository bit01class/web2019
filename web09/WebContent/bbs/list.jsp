<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="../err.jsp"%>
<%@ page import="java.sql.*,java.util.*" %>
<%@ page import="com.bit.model.Bbs04Dao,com.bit.model.Bbs04Bean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../template/header.jspf" %>
	
	<h1>게시판 페이지</h1>
	<table width="80%" align="center" border="1" cellspacing="0">
		<tr>
			<th width="80">글번호</th>
			<th>제목</th>
			<th width="100">날짜</th>
		</tr>
		<%
		ArrayList<Bbs04Bean> list=null;
		
		Bbs04Dao dao= new Bbs04Dao();
		list=dao.getList();
		
		for(int i=0; i<list.size(); i++){  
			Bbs04Bean bean=list.get(i);
		%>
		<tr>
			<a href="detail.jsp?idx=<%=bean.getNum() %>">
			<td><%=bean.getNum() %></td>
			<td><%
				for(int j=0; j<bean.getRe_lev(); j++){
					out.print("&nbsp;&nbsp;&nbsp;&nbsp;");
				}
				if(bean.getRe_lev()!=0)out.print("┗");
			%><%=bean.getSub() %></td>
			<td><%=bean.getNalja() %></td>
			</a>
		</tr>
		<%} %>
	</table>
	<center>
		<a href="add.jsp">[입 력]</a>
	</center>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>










