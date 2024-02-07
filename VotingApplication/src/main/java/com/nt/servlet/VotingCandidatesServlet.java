package com.nt.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nt.beans.Voter;
import com.nt.dao.VotingCandidatesDao;

@SuppressWarnings("serial")
@WebServlet("/vote")
public class VotingCandidatesServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		res.setContentType("text/html");
		HttpSession hs = req.getSession(false);
		
		if(hs==null)
		{
			req.setAttribute("msg","Session Expired...");
			req.getRequestDispatcher("Error.jsp").forward(req, res);
		}else {
			Voter ob = (Voter)hs.getAttribute("voter");
			String status = ob.getStatus();
			if((status.equals("VOTED")))
			{
				req.setAttribute("msg","You already voted");
			}else {
				int k = new VotingCandidatesDao().voteForCandidates(req);
				if(k>0)
				{
					req.setAttribute("msg","You Voted Successfully..");
				}
			}
			req.getRequestDispatcher("LoginSuccess.jsp").include(req, res);
		}
	}
}
