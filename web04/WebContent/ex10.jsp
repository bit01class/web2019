<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>response ���尴ü</h1>
	<p>�� �������� �����ϴ� ���� ���� ����</p>
	<p>�ֿ� ���</p>
	<ol>
		<li>��� ���� �Է�</li>
		<li>�����̷�Ʈ ó��</li>
	</ol>
	<%
	response.setContentType("text/plan; charset=euc-kr");
	ServletOutputStream myOut=response.getOutputStream();
	myOut.write("<h2>test</h2>".getBytes());
	myOut.flush();
	myOut.close();
	%>
</body>
</html>














