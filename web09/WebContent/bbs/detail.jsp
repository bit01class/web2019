<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.bit.model.*" errorPage="../err.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../template/header.jspf" %>
	<%
		String param=request.getParameter("idx");
		int num=Integer.parseInt(param);
		Bbs04Dao dao=new Bbs04Dao();
		Bbs04Bean bean=dao.detail(num);
	%>
		<h1 align="center">�� ������(<%=bean.getNum() %>��)</h1>
		<table width="80%">
			<tr>
				<td>����</td>
				<td><%=bean.getSub() %></td>
			</tr>
			<tr>
				<td>��¥</td>
				<td><%=bean.getNalja() %></td>
			</tr>
			<tr>
				<td colspan="2"><pre><%=bean.getContent() %></pre></td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="reAdd.jsp?idx=<%=bean.getNum() %>">[�� ��]</a>
					<a href="edit.jsp?idx=<%=bean.getNum() %>">[�� ��]</a>
					<a href="delete.jsp?idx=<%=bean.getNum() %>">[�� ��]</a>
				</td>
			</tr>
		</table>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>










