package com.DAOs;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.DAOs.Connect; 

public class updateDAO {
	
	public int updateUser(String[] inputs) {
		try
		{
			Connect c = new Connect();
			Connection con = c.getConnection();
			
			String query = "update hiveUsers "
					+ "set firstname = ? , lastname = ?, "
					+ "phone = ?, state = ?, city = ?, "
					+ "linkedin = ?, github = ? "
					+ "where email = ?";
			
			PreparedStatement pst = con.prepareStatement(query);
			
			pst.setString(1, inputs[0]);
			pst.setString(2, inputs[1]);
			pst.setString(3, inputs[3]);
			pst.setString(4, inputs[4]);
			pst.setString(5, inputs[5]);
			pst.setString(6, inputs[6]);
			pst.setString(7, inputs[7]);
			pst.setString(8, inputs[2]);
			
			int updatedRow = pst.executeUpdate();
			
			return updatedRow;
		}
		catch(Exception e)
		{
			return 0;
		}
	}
	
//	public static void main(String[] args)
//	{
//		updateDAO u = new updateDAO();
//		String[] inputs = {"Suyash" , "Patil", "813suyash@gmail.com", "7385401008", "Maharashtra", "Sangli", "www.linkedin.in/in/suyashpatil10", "www.github.com/SuyashPatil10"};
//		int result = u.updateUser(inputs);
//		System.out.println(result);
//	}
}
