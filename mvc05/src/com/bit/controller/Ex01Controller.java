package com.bit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {
	
	public Ex01Controller() {
		System.out.println("new Ex01Controller...");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
//		String val=this.getInitParameter("id");
		
		
		PrintWriter out = resp.getWriter();
		out.println("<h1>abcdefg</h1>");
		
		Enumeration<String> enums = this.getInitParameterNames();
		while(enums.hasMoreElements()){
			String name=enums.nextElement();
			out.println("<p>"+name+":"
				+this.getInitParameter(name)+"</p>");
		
		}
		out.close();
	}

}













