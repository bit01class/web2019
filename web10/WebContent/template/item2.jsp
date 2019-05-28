<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

	<h3>액션태그를 이용해 호출</h3>
<%

	request.setCharacterEncoding("EUC-KR");
	System.out.print(request.getParameter("test"));
	out.print(request.getParameter("test"));
%>
</body>
</html>