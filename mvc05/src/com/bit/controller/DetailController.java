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

@WebServlet("/bbs/detail.bit")
public class DetailController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		if(session.getAttribute("result")==null){
			resp.sendRedirect(req.getContextPath()+"/login/form.bit");
		}else{
			int num=Integer.parseInt(req.getParameter("idx"));
			Guest02Dao dao=new Guest02Dao();
			req.setAttribute("bean", dao.getListOne(num));
			
			RequestDispatcher rd = null;
			rd=req.getRequestDispatcher("/bbs/detail.jsp");
			rd.forward(req, resp);
		}
	}
}















