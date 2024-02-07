package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.nt.beans.Voter;

public class VoterRegistrationDao
{
	int k;
	public int voterRegistration(Voter ob)
	{
		try
		{
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("INSERT INTO VOTER VALUES(?,?,?,?,?)");
			ps.setString(1,ob.getName());
			ps.setString(2,ob.getPassword());
			ps.setString(3,ob.getMailId());
			ps.setLong(4,ob.getPhNo());
			ps.setString(5,ob.getStatus());
			
			k=ps.executeUpdate();
		}catch(Exception e) {e.printStackTrace();}
		
		return k;
	}
}
