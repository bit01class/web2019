<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	<jsp:useBean id="bean" class="com.bit.dto.Bbs03Bean"></jsp:useBean>
	<jsp:setProperty property="*" name="bean"/>
	<center>
		<h1>���� ������</h1>
		<form action="">
			<table width="80%">
				<tr>
					<td>�۹�ȣ</td>
					<td><jsp:getProperty property="num" name="bean"/><input type="hidden" name="num" value="<jsp:getProperty property="num" name="bean"/>"></td>
					<td>�۾���</td>
					<td><jsp:getProperty property="id" name="bean"/></td><td></td><td></td>
				</tr>
				<tr>
					<td>����</td>
					<td colspan="5"><input type="text" value="<jsp:getProperty property="sub" name="bean"/>"></td>
				</tr>
				<tr>
					<td colspan="6"><textarea name="content" cols="60" rows="6"><jsp:getProperty property="content" name="bean"/></textarea></td>
				</tr>
				<tr>
					<td colspan="6">
						<input type="submit" value="�� ��">
						<input type="reset" value="�� ��">
					</td>
				</tr>
			</table>
		</form>	
	</center>
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>



















