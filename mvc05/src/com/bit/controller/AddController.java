package com.bit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.model.Guest02Dao;

@WebServlet("/bbs/add.bit")
public class AddController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		if(session.getAttribute("result")==null){
			resp.sendRedirect(req.getContextPath()+"/login/form.bit");
		}else{
			RequestDispatcher rd = req.getRequestDispatcher("add.jsp");
			rd.forward(req, resp);			
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String sub=req.getParameter("sub");
		int unum=(Integer)(req.getSession().getAttribute("unum"));
		int pay=Integer.parseInt(req.getParameter("pay"));
		Guest02Dao dao=new Guest02Dao();
		dao.addList(sub, unum, pay);
		resp.sendRedirect(req.getContextPath()+"/bbs/list.bit");
	}
}











