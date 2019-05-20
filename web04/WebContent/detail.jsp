<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="oracle.jdbc.driver.OracleDriver" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>사원리스트</h1>
	<table border="1">
<% 
	String empno=request.getParameter("empno");
	String url="jdbc:oracle:thin:scott/tiger@localhost:1521:xe";	

	OracleDriver driver; 
	driver=new OracleDriver();
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	try{
		conn=DriverManager.getConnection(url);
		stmt=conn.createStatement();
		rs=stmt.executeQuery("select A.empno,A.ename,A.sal"
							+",A.hiredate,B.ename from emp A, emp B "
							+"where A.mgr=B.empno and A.empno="+empno);
		
		
		if(rs.next()){
			out.print("<tr><td>사번</td><td>"
					+rs.getObject(1)+"</td></tr>");
			out.print("<tr><td>이름</td><td>"
					+rs.getObject(2)+"</td></tr>");
			out.println("<tr><td>연봉</td><td>"
					+rs.getObject(3)+"</td></tr>");
			out.println("<tr><td>입사일</td><td>"
					+rs.getObject(4)+"</td></tr>");
			out.println("<tr><td>직속상관</td><td>"
					+rs.getObject(5)+"</td></tr>");
		}
	}finally{
		if(rs!=null){rs.close();}
		if(stmt!=null){stmt.close();}
		if(conn!=null){conn.close();}
	}
%>
</table>

</body>
</html>







