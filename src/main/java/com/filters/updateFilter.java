package com.filters;

import jakarta.servlet.Filter;

import jakarta.servlet.http.HttpFilter;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebFilter;

import com.filters.Validation;

/**
 * Servlet Filter implementation class updateFilter
 */
@WebFilter("/updateController")
public class updateFilter extends HttpFilter implements Filter {
    
	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String phone = request.getParameter("phone");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String linkedin = request.getParameter("linkedin");
		String github = request.getParameter("github");
		
		Validation v = new Validation();
		RequestDispatcher rd;
		
		if((firstname != null) && (firstname.length() < 50) && (firstname != ""))
		{
			if((lastname != null) && (lastname.length() < 50) && (lastname != ""))
			{
				if((v.checkPhoneNumber(phone)) && (phone != null))
				{
					if((state.length() < 50) && (state != null) && (state != ""))
					{
						if((city.length() < 50) && (city != null) && (city != ""))
						{
							if((linkedin.length() < 100))
							{
								if((github.length() < 100))
								{
									chain.doFilter(request, response);
								}
								else
								{
									request.setAttribute("updateError", "Please enter correct GitHub URL!");
									rd = request.getRequestDispatcher("/profile.jsp");
									rd.include(request, response);
								}
							}
							else
							{
								request.setAttribute("updateError", "Please enter correct Linkedin URL!");
								rd = request.getRequestDispatcher("/profile.jsp");
								rd.include(request, response);
							}
						}
						else
						{
							request.setAttribute("updateError", "Please enter correct city!");
							rd = request.getRequestDispatcher("/profile.jsp");
							rd.include(request, response);
						}
					}
					else
					{
						request.setAttribute("updateError", "Please enter correct state!");
						rd = request.getRequestDispatcher("/profile.jsp");
						rd.include(request, response);
					}
				}
				else
				{
					request.setAttribute("updateError", "Please enter 10 digit phone number!");
					rd = request.getRequestDispatcher("/profile.jsp");
					rd.include(request, response);
				}
			}
			else
			{
				request.setAttribute("updateError", "Please enter lastname with in 50 characters!");
				rd = request.getRequestDispatcher("/profile.jsp");
				rd.include(request, response);
			}
		}
		else
		{
			request.setAttribute("updateError", "Please enter firstname with in 50 characters!");
			rd = request.getRequestDispatcher("/profile.jsp");
			rd.include(request, response);
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
	}
}
