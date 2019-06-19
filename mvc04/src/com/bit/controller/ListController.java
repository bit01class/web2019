package com.bit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.Guest02Dao;

public class ListController extends HttpServlet {
	// /bbs/list.bit
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("listController...");
		//model
		Guest02Dao dao=new Guest02Dao();
		req.setAttribute("list", dao.getList());
		//view
		RequestDispatcher rd = req.getRequestDispatcher("../list.jsp");
		rd.forward(req, resp);
		
	}

}












