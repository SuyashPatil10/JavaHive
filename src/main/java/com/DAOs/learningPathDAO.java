package com.DAOs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map.Entry;

import com.DAOs.Connect;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;


public class learningPathDAO {
	Connection con;
	Connect c = new Connect();
	
	public learningPathDAO()
	{
		con = c.getConnection();
	}
	
	private JsonObject getAllData(String table, String email) 
	{
		try
		{
			String query1 = String.format("SELECT f.name FROM %s f NATURAL JOIN %s_read fr"
					+ " WHERE f.id = fr.id AND email = ?", table, table);
			PreparedStatement pst1 = con.prepareStatement(query1);
			pst1.setString(1, email);
			
			String query2 = String.format("SELECT f.name FROM %s f " + 
					"WHERE NOT EXISTS( SELECT 1 FROM %s_read fr " +
					"WHERE fr.id = f.id AND fr.email = ?)", table, table);
			PreparedStatement pst2 = con.prepareStatement(query2);
			pst2.setString(1, email);
			
			ResultSet rs1 = pst1.executeQuery();
			ResultSet rs2 = pst2.executeQuery();
			
			JsonObject tableData = new JsonObject();
			tableData = ResultSetToJSON(rs1, rs2, table);
			return tableData;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
	
	private JsonObject ResultSetToJSON(ResultSet rs1, ResultSet rs2, String table) throws SQLException {
		JsonObject jsonData = new JsonObject();
		
		JsonArray jsonArray1 = new JsonArray();
		JsonArray jsonArray2 = new JsonArray();
		
		while(rs1.next()) {
			String name = rs1.getString("name");
			JsonElement element = new JsonPrimitive(name);
			jsonArray1.add(element);
		}
		
		while(rs2.next()) {
			String name = rs2.getString("name");
			JsonElement element = new JsonPrimitive(name);
			jsonArray2.add(element);
		}
		
		jsonData.add(String.format("%s_read", table), jsonArray1);
		jsonData.add(table, jsonArray2);
		
		return jsonData;
	}
	
	private JsonObject mergeAllData(JsonObject[] allData)
	{
		JsonObject mergedObject = new JsonObject();
		
		for(JsonObject current: allData)
		{
			for(Entry<String, JsonElement> entry : current.entrySet()) {
				String key = entry.getKey();
				JsonElement element = entry.getValue();
				JsonArray value = element.getAsJsonArray();
				
				mergedObject.add(key, value);
			}
		}
		
		return mergedObject;
	}
	
	
	public JsonObject getJsonData(String email) {
		
		learningPathDAO ld = new learningPathDAO();

		JsonObject[] allData = {
				ld.getAllData("fundamentals", email),
				ld.getAllData("oops", email),
				ld.getAllData("exception", email),
				ld.getAllData("multithreading", email),
				ld.getAllData("innerclass", email),
				ld.getAllData("lang", email),
				ld.getAllData("files", email),
				ld.getAllData("serialization", email),
				ld.getAllData("collections", email),
				ld.getAllData("generics", email),
				ld.getAllData("gbcollector", email)
				};

		
		return ld.mergeAllData(allData);
	}
}
