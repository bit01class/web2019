<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>request ���尴ü</h1>
	<p>�� �������� �� ������ ������ ��û ���� ���� ����</p>
	<p>�ֿ� ���</p>
	<ol>
		<li>Ŭ���̾�Ʈ(�� ������)�� ���õ� ���� �б� ���</li>
		<li>������ ���õ� ���� �б� ���</li>
		<li>Ŭ���̾�Ʈ�� ������ ��û �Ķ���� �б� ���</li>
		<li>Ŭ���̾�Ʈ�� ������ ��û ��� �б� ���</li>
		<li>Ŭ���̾�Ʈ�� ������ ��Ű �б� ���</li>
		<li>�Ӽ� ó�� ���</li>	
	</ol>
	<% String ctxt=request.getContextPath(); %>
	<a href="<%=ctxt %>/ex08.jsp?id=aa&pw=bb&name=cc">link</a>
	<%
	System.out.println("-----------------------------");
		String id=request.getRemoteAddr();
		int port=request.getRemotePort();
		System.out.print(id+":"+port);
		String method=request.getMethod();
		System.out.println(method);
		
		String uri=request.getRequestURI();
		System.out.println(uri);
		String context=request.getContextPath();
		System.out.println(context);
		
		String serveName=request.getServerName();
		int servePort=request.getServerPort();
		System.out.println(serveName+":"+servePort);
		
	%>
	
	
</body>
</html>
















