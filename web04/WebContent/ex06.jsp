<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>out���尴ü</h1>
	<p>�ۼ�:��ũ��Ʈ��</p>
	<p>out - io(output)</p>
	<p><% out.write("���"); %></p>
	<p><% out.println("���2"); %></p>
	<% 
	javax.servlet.jsp.JspWriter myOut=out;
	%>
	<%="" %>
	<%
	JspWriter out2=pageContext.getOut();
	
	%>
</body>
</html>














