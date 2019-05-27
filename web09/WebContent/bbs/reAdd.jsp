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
	
	Bbs04Dao dao= new Bbs04Dao();
	Bbs04Bean bean = dao.getTitle(num);
	
	%>
		<h1>답글</h1>
		<center>
			<form action="reInsert.jsp" method="post">
				<input type="hidden" name="num" value="<%=bean.getNum()%>">
				<input type="hidden" name="ref" value="<%=bean.getRe_ref()%>">
				<input type="hidden" name="seq" value="<%=bean.getRe_seq()%>">
				<input type="hidden" name="lev" value="<%=bean.getRe_lev()%>">
				<table width="500" >
					<tr>
						<td>제목</td>
						<td>
							<input type="text" name="sub" value="re:<%=bean.getSub()%>">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea name="content" rows="6" cols="50"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="답 글">
							<input type="reset" value="취 소">
						</td>
					</tr>			
				</table>	
			</form>
		</center>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>