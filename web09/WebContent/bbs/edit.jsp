<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.bit.model.*"%>
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
	<h1>수정페이지</h1>
	<center>
		<form action="update.jsp" method="post">
			<input type="hidden" name="num" value="<%=bean.getNum()%>">
			<table width="500">
				<tr>
					<td>제목</td>
					<td>
						<input type="text" name="sub" value="<%=bean.getSub()%>">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea name="content" rows="6" cols="50"><%=bean.getContent() %></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="수 정">
						<input type="reset" value="취 소">
					</td>
				</tr>
			</table>
		</form>
	</center>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>