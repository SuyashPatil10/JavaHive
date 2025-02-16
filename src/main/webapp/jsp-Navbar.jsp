<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./CSS/css-Navbar.css">
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+
			Neue&family=Kanit:wght@600&family=Lato:wght@300&family=Oswald&family=Ubuntu
			:wght@300&display=swap" rel="stylesheet">
</head>
<body>
	<nav>
        <div class="logo">
            <p>JAVAHIVE</p>
        </div>
        <div class="list">
            <ul>
                <li><a href="jsp-Home.jsp">Home</a></li>
                <li><a href="jsp-Service.jsp">Services</a></li>
                <li><a href="jsp-About.jsp">About</a></li>
                <li><a href="introduction.jsp">Tutorials</a></li>
                <li><a href="jsp-Contact.jsp">Contact</a></li>
            </ul>
        </div>
        
        <% 
        	ArrayList al = (ArrayList) session.getAttribute("userInfo");
        	if(al == null)
        	{
        %> 

        <div class="login">
            <a href="loginPage.jsp">LOGIN</a>
        </div>
        
        <%
        } else {
        	String firstName = (String) al.get(0);
    		String lastName = (String) al.get(1);
    		
    		String initial = "" + firstName.charAt(0) + lastName.charAt(0);
        %>
        
        <div class="user-profile">
            <a href="profile.jsp" id="profile"><%= initial%></a>
        </div>
        
        <% } %>
    </nav>
	
</body>
	<script src="./JS/script-Navbar.js"></script>
</html>