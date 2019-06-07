<%@ page language="java" contentType="application/xml; charset=UTF-8"
    pageEncoding="UTF-8"%><?xml version="1.0" encoding="UTF-8"?>
<%
		System.out.println("result 호출");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		String sql="select count(*) from 테이블 where id=? and pw=?";
		//~~~~
		boolean result=false;
		if(id.equals("admin")&&pw.equals("1234")){
			result=true;
		}
	%>
    
    <logins>
    	<login>
    		<result><%=result%></result>
    		<id><%=request.getParameter("id")%></id>
    	</login>
    </logins>
    
    
    
    
    
    
    
    
    
    
    