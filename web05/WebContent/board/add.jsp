<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">입력 페이지</h1>
	<form action="insert.jsp">
	<table width="600" align="center">
		<tr>
			<td align="center" bgcolor="skyblue" width="80">제목</td>
			<td>
				<input type="text" name="sub" size="60">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<textarea rows="5" cols="80" name="content"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="입 력">
				<input type="reset" value="취 소">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>










