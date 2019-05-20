<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>스크립트릿</h1>
	<p>&lt;%<br><br>%&gt;</p>
	<%
	int a=1234;
	String msg="jsp";
	
	System.out.println("콘솔에 출력");
	out.print(a);
	out.print(a+1);
	out.print(a+2);
	%>
	
	<p><%=msg %></p>
</body>
</html>












