package com.bit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.model.User02Dao;

@WebServlet("/login/form.bit")
public class LoginController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("form.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String id=req.getParameter("id");
		String pw=req.getParameter("pw");
		User02Dao dao=new User02Dao();
		int unum=0;
		if((unum=dao.login(id, pw))>0){
			// session
			HttpSession session = req.getSession();
			session.setAttribute("result", true);
			session.setAttribute("id", id);
			session.setAttribute("unum", unum);
			resp.sendRedirect(req.getContextPath());
		}else{
			
			req.setAttribute("errmsg", "<script type=\"text/javascript\">alert('id&pw를 다시 확인하세요');</script>");
			doGet(req,resp);
		}
	}
}




















