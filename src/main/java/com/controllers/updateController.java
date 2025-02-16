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

import com.DAOs.updateDAO;
import com.DAOs.Connect;

@WebServlet("/updateController")
public class updateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String phone = request.getParameter("phone");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String linkedin = request.getParameter("linkedin");
		String github = request.getParameter("github");
		
		HttpSession session = request.getSession();
		ArrayList<String> al = (ArrayList<String>) session.getAttribute("userInfo");
		String email = (String)al.get(2);
		
		String[] inputs = {firstname, lastname, email, phone, state, city, linkedin, github};
		
		updateDAO update = new updateDAO();
		int result = update.updateUser(inputs);
		
		RequestDispatcher rd;
		
		if(result == 1) 
		{
			session.removeAttribute("userInfo");
			Connect c = new Connect();
			ArrayList<String> al2 = c.getUserAttributes(email);
			session.setAttribute("userInfo", al2);
			request.setAttribute("updateSuccess", "Information updated Successfully!");
			rd = request.getRequestDispatcher("/profile.jsp");
			rd.include(request, response);
		}
		else
		{
			request.setAttribute("updateError", "Something went wrong. Please try Again!");
			rd = request.getRequestDispatcher("/profile.jsp");
			rd.include(request, response);
		}
	}

}
