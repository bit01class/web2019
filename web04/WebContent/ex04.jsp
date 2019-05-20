<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>선언부</h1>
	<p>&lt;%! <br><br> %&gt;</p>
	<%!
	
	public String func(){
		 return "출력";
	}
	
	public void func(int a){
		
	}
	
	%>
	
	<p><% String msg=func();
	out.println(msg);%></p>
	<table border=1>
		<tr>
			<%
				for(int i=2; i<10; i++){
					out.println("<td>"+i+"단</td>");
				}
			%>
		</tr>
		<% 
		
		for(int j=1; j<10; j++){ 
		%>
		<tr>
			<%
				for(int i=2; i<10; i++){
			%>
					<td><%=i+"x"+j+"="+gugudan(i,j) %></td>
			<%
				}
			%>
		</tr>
		<%
		}
		%>
	</table>
	
	<%!

	
	public int gugudan(int a, int b){
		return a*b;
	}
	%>
</body>
</html>








