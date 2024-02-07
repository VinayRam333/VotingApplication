package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import com.nt.beans.Voter;

public class VoterSignInDao
{
	public Voter ob;
	public Voter voterSignIn(HttpServletRequest req)
	{
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement
					           ("SELECT * FROM VOTER WHERE MAIL=? AND PWD=?");
			
			ps.setString(1,req.getParameter("mail"));
			ps.setString(2,req.getParameter("pwd"));
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				ob = new Voter();
				ob.setName(rs.getString(1));
				ob.setPassword(rs.getString(2));
				ob.setMailId(rs.getString(3));
				ob.setPhNo(rs.getLong(4));
				ob.setStatus(rs.getString(5));
			}
		}catch(Exception e) {e.printStackTrace();}
		
		return ob;
	}
}
