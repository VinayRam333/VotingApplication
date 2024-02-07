package com.nt.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nt.beans.Voter;
import com.nt.dao.ViewVotersDao;

@SuppressWarnings("serial")
@WebServlet("/viewVoters")
public class ViewVotersServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		res.setContentType("text/html");
		HttpSession hs = req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg","Session Expired...");
			req.getRequestDispatcher("Error.jsp").forward(req, res);
		}else {
			ArrayList<Voter> al = new ViewVotersDao().viewVoterDetails();
			hs.setAttribute("al",al);
			req.getRequestDispatcher("ViewVoters.jsp").forward(req,res);
		}
	}
}
