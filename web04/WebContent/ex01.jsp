<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- ��Ƽ�� - JSP �������� ���� ���� ������ ���� -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>��ũ��Ʈ �������</h1>
	<%!
	public void func(){
		
	}
	%><!-- �����(Declaration) - �ڹ� �޼���(�Լ�)�� ���� -->
	<%
		// ���尴ü�� ��ũ��Ʈ������ ���Ǵ�
		// jsp �ۼ��� ���� �⺻ ���
		int a=4321;
		out.print(a+1);
		System.out.println(a+2);
	%>	<!-- ��ũ��Ʈ��(Scriptlet) - �ڹ� �ڵ带 ���� -->
	<p><%=a %></p> <!-- ǥ���� - ���� ��� -->
	
	
</body>
</html>














