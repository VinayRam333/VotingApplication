package com.nt.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection
{
	private static Connection con;
	private DBConnection() {}
	
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","THOR","THOR");
		}catch(Exception e) {e.printStackTrace();}
	}
	
	public static Connection getCon()
	{
		return con;
	}
}
