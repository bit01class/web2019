package com.bit.test01;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Ex03 extends javax.servlet.GenericServlet{

	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html; charset=\"utf-8\"");
		OutputStream os = res.getOutputStream();
		PrintStream out = new PrintStream(os,true,"utf-8");
		
		out.println("<!doctype html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"utf-8\">");
		out.println("</head>");
		out.println("<body>");
		out.println(new String("<h1>한글</h1>".getBytes(),"utf-8"));
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

}














