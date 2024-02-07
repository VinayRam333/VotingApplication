package com.nt.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nt.beans.Candidates;
import com.nt.dao.ViewCandidatesDao;

@SuppressWarnings("serial")
@WebServlet("/viewCandidates")
public class ViewCandidatesServlet extends HttpServlet
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
			ArrayList<Candidates> cd = new ViewCandidatesDao().viewCandidates();
			hs.setAttribute("cd",cd);
			req.getRequestDispatcher("ViewCandidates.jsp").forward(req,res);
		}
	}
}
