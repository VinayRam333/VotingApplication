package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.nt.beans.Voter;

public class ViewVotersDao 
{
   public ArrayList<Voter> al = new ArrayList<Voter>();
   
   public ArrayList<Voter> viewVoterDetails()
   {
	   try
	   {
		   Connection con = DBConnection.getCon();
		   PreparedStatement ps = con.prepareStatement("SELECT * FROM VOTER");
		   ResultSet rs = ps.executeQuery();
		   
		   while(rs.next())
		   {
			   Voter ob = new Voter();
			   ob.setName(rs.getString(1));
			   ob.setPassword(rs.getString(2));
			   ob.setMailId(rs.getString(3));
			   ob.setPhNo(rs.getLong(4));
			   ob.setStatus(rs.getString(5));
			   
			   al.add(ob);
		   }
	   }catch(Exception e) {e.printStackTrace();}
	   
	   return al;
   }
}
