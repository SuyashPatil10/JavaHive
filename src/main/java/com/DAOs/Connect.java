package com.DAOs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Connect {
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/javahive";
	String user = "root";
	String pwd = "suyash@1823";
	
	public Connection getConnection()
	{
		try 
		{
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, user, pwd);
			
			return con;
		}
		catch(Exception e)
		{
			return null;
		}
	}
	
	public ArrayList getUserAttributes(String email)
	{
		try
		{
			Connect c = new Connect();
			Connection con = c.getConnection();
			
			String query = "select * from hiveUsers where email = ?";
			
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, email);
			
			ResultSet rs = pst.executeQuery();
			
			ArrayList<String> al = new ArrayList<String>();
			
			while(rs.next())
			{
				al.add(rs.getString(1)); // FirstName
				al.add(rs.getString(2)); // LastName
				al.add(rs.getString(3)); // Email
				al.add(rs.getString(4)); // Password
				al.add(rs.getString(5)); // phone
				al.add(rs.getString(6)); // State
				al.add(rs.getString(7)); // City
				al.add(rs.getString(8)); // linkedin
				al.add(rs.getString(9)); // github
			}
			
			return al;
		}
		catch(Exception e)
		{
			return null;
		}
	}
}
