package com.nt.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		res.setContentType("text/html");
		HttpSession hs = req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg1","Session Expired...");
		}else {
			hs.removeAttribute("voter");
			hs.invalidate();
			req.setAttribute("msg1","Logout Successfully...");
		}
		req.getRequestDispatcher("Logout.jsp").forward(req, res);
	}
}
