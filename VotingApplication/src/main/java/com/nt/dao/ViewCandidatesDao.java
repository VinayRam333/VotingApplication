package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.nt.beans.Candidates;

public class ViewCandidatesDao 
{
	public ArrayList<Candidates> al = new ArrayList<Candidates>();
	
	public ArrayList<Candidates> viewCandidates()
	{
		try
		{
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement
					                  ("SELECT * FROM CANDIDATES");
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				Candidates cd = new Candidates();
				cd.setName(rs.getString(1));
				cd.setVote_count(rs.getInt(2));
				
				al.add(cd);
			}
		}catch(Exception e) {e.printStackTrace();}
		
		return al;
	}
}
