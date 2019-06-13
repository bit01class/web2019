package com.bit.test01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex04 extends GenericServlet{

	@Override
	public void service(ServletRequest req1, ServletResponse res1)
			throws ServletException, IOException {
		HttpServletRequest req= (HttpServletRequest) req1;
		HttpServletResponse res= (HttpServletResponse) res1;
		String method=req.getMethod();
		if(method.equals("GET")){
			doGet(req,res);
		}else if(method.equals("POST")){
			doPost(req,res);
		}
	}
	
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException{
		String msg="";
		msg+="<!DOCTYPE html>";
		msg+="<html>";
		msg+="<head>";
		msg+="<meta charset=\"UTF-8\">";
		msg+="<title>Insert title here</title>";
		msg+="</head>";
		msg+="<body>";
		msg+="	<form method=\"post\">";
		msg+="		id<input type=\"text\" name=\"id\"/>";
		msg+="		<button>POST</button>";
		msg+="	</form>";
		msg+="</body>";
		msg+="</html>";
		
		res.setContentType("text/html; charset=\"utf-8\"");
		PrintWriter out = res.getWriter();
		out.print(msg);
		out.close();
	}
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException{
		
		req.setCharacterEncoding("utf-8");
		String msg="";
		msg+="<!DOCTYPE html>";
		msg+="<html>";
		msg+="<head>";
		msg+="<meta charset=\"UTF-8\">";
		msg+="<title>Insert title here</title>";
		msg+="</head>";
		msg+="<body>";
		msg+="	<h1>";
		msg+=req.getParameter("id");
		msg+="	</h1>";
		msg+="</body>";
		msg+="</html>";
		
		res.setContentType("text/html; charset=\"utf-8\"");
		PrintWriter out = res.getWriter();
		out.print(msg);
		out.close();
	}
}




















