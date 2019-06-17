package com.bit.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex03 extends HttpServlet{
	//ex03.jsonp

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String param=req.getParameter("callback");
		System.out.println(param);
		String msg="";
		msg+=param+" ({\"root\":[";
		msg+="               	{\"key1\":\"value1\",\"key2\":\"value2\"},";
		msg+="               	{\"key1\":\"value3\",\"key2\":\"value4\"}";
		msg+="               ]})";
		
		PrintWriter out = resp.getWriter();
		out.println(msg);
		out.close();
	}
}











