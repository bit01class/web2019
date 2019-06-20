package com.bit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns={"/ex02.bit","/test02.nhn"}
			,initParams={
				@WebInitParam(name="id",value="root"),
				@WebInitParam(name="pw",value="1234")
			})
public class Ex02Controller extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id=this.getInitParameter("id");
		String pw=this.getInitParameter("pw");
		PrintWriter out = resp.getWriter();
		out.println("<h1>ABCDEFG</h1>");
		out.println("<p>id:"+id+"</p>");
		out.println("<p>pw:"+pw+"</p>");
		out.close();
	}
}











