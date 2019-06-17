package com.bit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.Guest01Dao;

public class AddController extends HttpServlet{
	// /add.bit

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		RequestDispatcher rd = req.getRequestDispatcher("add.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("test111");
		req.setCharacterEncoding("utf-8");
		String param1=req.getParameter("sub");
		String param2=req.getParameter("nalja");
		String param3=req.getParameter("pay");
		
		String sub=param1.trim();
		String nalja=param2;
		int pay=Integer.parseInt(param3);
//		System.out.println(sub);
//		System.out.println(nalja);
//		System.out.println(pay);
		
		Guest01Dao dao=new Guest01Dao();
		dao.Insert(sub, nalja, pay);
		
		resp.sendRedirect("list.bit");
	}
}





















