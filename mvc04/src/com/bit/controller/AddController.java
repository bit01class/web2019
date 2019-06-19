package com.bit.controller;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.Guest02Dao;

public class AddController extends HttpServlet{
	// /bbs/add.bit

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("../add.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HashMap<String,String> map=new HashMap<String,String>();
		//params[0]=req.getParameter("");
		Enumeration<String> enums = req.getParameterNames();
		int i=0;
		while(enums.hasMoreElements()){
			String key=enums.nextElement();
			String value=req.getParameter(key);
			map.put(key, value);
		}
		
		String sub=map.get("sub");
		int unum=Integer.parseInt(map.get("unum"));
		int pay=Integer.parseInt(map.get("pay"));
		
		Guest02Dao dao=new Guest02Dao();
		dao.insert(sub,unum,pay);
//		resp.sendRedirect("list.bit");
		resp.sendRedirect("./list.bit");
//		resp.sendRedirect("http://localhost:8080/mvc04/bbs/list.bit");
//		resp.sendRedirect("/mvc04/bbs/list.bit");
		
	}
}

























