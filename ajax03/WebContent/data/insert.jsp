<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.bit.dao.Bbs04Dao"%>
	<%
	String sub=request.getParameter("sub");
	String content=request.getParameter("content");
	
	Bbs04Dao dao=new Bbs04Dao();
	dao.insert(sub,content);
	%>













