package com.nt.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nt.beans.Voter;
import com.nt.dao.VoterSignInDao;

@SuppressWarnings("serial")
@WebServlet("/login")
public class VoterSignInServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		res.setContentType("text/html");
		Voter ob = new VoterSignInDao().voterSignIn(req);
		if(ob==null)
		{
			req.setAttribute("msg","InvalidLogin...");
			req.getRequestDispatcher("Error.jsp").forward(req,res);
		}else {
			HttpSession hs = req.getSession();
			hs.setAttribute("voter",ob);
			req.getRequestDispatcher("LoginSuccess.jsp").forward(req, res);
		}
	}
}
