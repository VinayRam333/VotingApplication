package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import com.nt.beans.AdminBean;

public class AdminLoginDao 
{
	public AdminBean ab;
	
	public AdminBean adminLogin(HttpServletRequest req)
	{
		try
		{
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement
					           ("SELECT * FROM VOTER_ADMIN WHERE MAIL=? AND PWD=?");
			
			ps.setString(1,req.getParameter("mail"));
			ps.setString(2,req.getParameter("pwd"));
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				ab = new AdminBean();
				ab.setMailId(rs.getString(1));
				ab.setPwd(rs.getString(2));
				ab.setName(rs.getString(3));
			}
		}catch(Exception e) {e.printStackTrace();}
		
		return ab;
	}
}
