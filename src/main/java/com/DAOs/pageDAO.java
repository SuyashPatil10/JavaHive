package com.DAOs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.DAOs.Connect;

public class pageDAO {
	private String email;
	private String topic;
	private String[] parts;
	private String table;
	Connect c = new Connect();
	
	public pageDAO(String email, String topic)
	{
		this.email = email;
		this.topic = topic;
		this.parts = this.topic.split("-");
		this.table = this.parts[0].concat("_read");
		
	}
	
	public int storePage()
	{
		try
		{
			Connection con = c.getConnection();
			String query = String.format("insert into %s values(?, ?)", table);
			
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, this.email);
			pst.setString(2, this.topic);
			
			return pst.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return 0;
		}
	}
	
	public boolean hasReadPage() {
		
		try
		{
			Connection con = c.getConnection();
			
			String query = String.format("select * from  %s where email = ? AND id = ?",this.table);
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, this.email);
			pst.setString(2, this.topic);
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next())
			{
				return true;
			}
			
			return false;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return true;
		}
	}
	
//	public static void main(String[] args) {
//		pageDAO p = new pageDAO();
//		boolean result = p.hasReadPage("813suyash@gmail.com", "fundamentals-1");
//		System.out.println(result);
//	}	
}
