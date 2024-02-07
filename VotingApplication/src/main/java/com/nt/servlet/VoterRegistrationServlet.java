package com.nt.servlet;
import com.nt.beans.*;
import com.nt.dao.VoterRegistrationDao;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;

import java.io.*;
import javax.servlet.http.*;

@SuppressWarnings("serial")
@WebServlet("/reg")
public class VoterRegistrationServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		Voter ob = new Voter();
		res.setContentType("text/html");
		ob.setName(req.getParameter("name"));
		ob.setPassword(req.getParameter("pwd"));
		ob.setMailId(req.getParameter("mail"));
		//System.out.println(req.getParameter("phn"));
		long phn = Long.parseLong(req.getParameter("phn"));
		ob.setPhNo(phn);
		ob.setStatus(req.getParameter("status"));
		
		
		int k = new VoterRegistrationDao().voterRegistration(ob);
		if(k>0)
		{
			req.getRequestDispatcher("RegistrationSuccess.jsp").forward(req,res);
		}
	}
}
