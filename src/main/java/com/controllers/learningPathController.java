package com.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

import com.DAOs.learningPathDAO;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class learningPathController
 */
@WebServlet("/learningPathController")
public class learningPathController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		ArrayList<String> al = (ArrayList<String>) session.getAttribute("userInfo");
		
		RequestDispatcher rd;
		
		if(al != null)
		{
			learningPathDAO path = new learningPathDAO();
			JsonObject JsonData = path.getJsonData((String)al.get(2));
			
			request.setAttribute("json", JsonData);
			rd = request.getRequestDispatcher("/learningPath.jsp");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("loginError", "Login to access the Learning path");
			rd = request.getRequestDispatcher("/loginPage.jsp");
			rd.forward(request, response);
		}
	}

}
