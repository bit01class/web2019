package com.bit.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.model.Guest01Dao;
import com.bit.model.Guest01Dto;

public class ListController extends HttpServlet{
	// /list.bit
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//model
		Guest01Dao dao=new Guest01Dao();
		ArrayList<Guest01Dto> list = dao.getList();
		
		//view
		req.setAttribute("alist", list);
		
		RequestDispatcher rd = req.getRequestDispatcher("list.jsp");
		rd.forward(req, resp);
	}
}











