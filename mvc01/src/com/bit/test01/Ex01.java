package com.bit.test01;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Ex01 implements Servlet{
	ServletConfig config;

	@Override
	public void destroy() {
		
		System.out.println("destroy()...");
	}

	@Override
	public ServletConfig getServletConfig() {
		System.out.println("getServletConfig()...");
		return this.config;
	}

	@Override
	public String getServletInfo() {
		System.out.println("getServletInfo()...");
		return "bit03class~~~";
	}

	@Override
	public void init(ServletConfig arg0) throws ServletException {
		System.out.println("init()...");
		config=arg0;
	}

	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		System.out.println("service()...");
		
		res.setContentType("application/json; charset=UTF-8");
		OutputStream output = res.getOutputStream();
		PrintStream out = new PrintStream(output);
//		out.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
//		out.println("<root>");
//		out.println("	<row>");
//		out.println("		<num>1111</num>");
//		out.println("		<name>tester</name>");
//		out.println("	</row>");
//		out.println("</root>");
		
		out.println("{\"root\":[{\"num\":\"1212\",\"name\":\"tester\"}]}");
		out.close();
		output.close();
	}

}























