package com.nt.dao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nt.beans.AdminBean;

@SuppressWarnings("serial")
@WebServlet("/admin")
public class AdminLoginServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		res.setContentType("text/html");
		HttpSession hs = req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg","Session Expired..");
			req.getRequestDispatcher("Error.jsp").forward(req,res);
		}else {
			AdminBean ab = new AdminLoginDao().adminLogin(req);
			if(ab==null)
			{
				req.setAttribute("msg","Invalid Login..");
				req.getRequestDispatcher("Error.jsp").forward(req, res);
			}else {
				hs.setAttribute("ab",ab);
				req.getRequestDispatcher("AdminProfile.jsp").forward(req, res);
			}
		}
	}
}
