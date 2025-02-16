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

import com.DAOs.pageDAO;
/**
 * Servlet implementation class pageController
 */
@WebServlet("/pageController")
public class pageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String checkbox = request.getParameter("fundamentals");
		
		String referrer = request.getHeader("Referer");
		String url = pageController.getLastElement(referrer);
		
		HttpSession session = request.getSession();
		ArrayList<String> al = (ArrayList<String>) session.getAttribute("userInfo");
		RequestDispatcher rd;		
		
		if(al != null)
		{
			String email = (String) al.get(2);
			pageDAO page = new pageDAO(email, checkbox);

			if(!page.hasReadPage())
			{
				int result = page.storePage();
				
				if(result == 1)
				{
					session.setAttribute("markedPage", "Great! You've marked this Tutorial.");
//					rd = request.getRequestDispatcher(url);
//					rd.forward(request, response);
					response.sendRedirect(request.getContextPath() + url);
				}
				else
				{
					session.setAttribute("storePageError", "Something went wrong!");
//					rd = request.getRequestDispatcher(url);
//					rd.forward(request, response);
					response.sendRedirect(request.getContextPath() + url);
				}
			}
			else
			{
				session.setAttribute("storePageError", "You've already read this page");
//				rd = request.getRequestDispatcher(url);
//				rd.forward(request, response);
				response.sendRedirect(request.getContextPath() + url);
				
			}
		}
		else
		{
			request.setAttribute("loginError", "Login to save your performance!");
			rd = request.getRequestDispatcher("/loginPage.jsp");
			rd.forward(request, response);
		}
		
	}
	
	private static String getLastElement(String URL)
	{
		String[] URLParts = URL.split("/");
		
		return "/".concat(URLParts[URLParts.length - 1]);
	}

}
