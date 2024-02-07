package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;

public class VotingCandidatesDao
{
	public int k;
	public int voteForCandidates(HttpServletRequest req)
	{
		try
		{
			String candidate = req.getParameter("vote");
			
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("UPDATE VOTER SET STATUS=? WHERE MAIL=?");
			ps.setString(1,"VOTED");
			ps.setString(2,req.getParameter("mail"));
			k = ps.executeUpdate();

			PreparedStatement ps1 = con.prepareStatement
				     ("UPDATE CANDIDATES SET VOTE_COUNT=VOTE_COUNT+1 WHERE NAME=?");
			ps1.setString(1,candidate);
			k=ps1.executeUpdate();
			
		}catch(Exception e) {e.printStackTrace();}
		
		return k;
	}
}