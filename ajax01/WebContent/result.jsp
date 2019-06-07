<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		System.out.println("result 호출");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		String sql="select count(*) from 테이블 where id=? and pw=?";
		//~~~~
		if(id.equals("admin")&&pw.equals("1234")){
	%>
		<h3>환영합니다<%=id %>님</h3>
	<%}else{ %>
		<h3>로그인 실패</h3>
	
	<%
	response.sendRedirect("login.jsp");
	
	} %>
</body>
</html>



















