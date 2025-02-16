<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.google.gson.JsonObject" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+Neue&family=Kanit:wght@600&family=Lato:wght@300&family=Oswald&family=Ubuntu:wght@300&display=swap"
        rel="stylesheet">

<link rel="stylesheet" href="./CSS/learningPath.css">
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	
	
		if(session.getAttribute("userInfo") == null)
		{
			response.sendRedirect("/loginPage.jsp");
		}
	%>


	<%@include file="jsp-Navbar.jsp"%>
	
	
	<div class="total-tutorials">
        <div class="topics">
            <!-- <p>All (210)</p>
            <p>Core Java (130)</p>
            <p>Advance Java (80)</p>
            <p>In Progress (3)</p>
            <p>Not Started (13)</p>
            <p>Completed (1)</p> -->
        </div>

        <div class="heading">
            <h4>All Your Points collected from your My learning experience have been saved to the javahive</h4>
        </div>
    </div>
	
	<div class="tutorial-container">
        <div class="tutorial-heading">
            <p>Core Java</p>
        </div>

        <div class="tutorial-content">
            <!-- <div class="tutorial-card">
                <div class="image">
                    <img src="Images/card-img.svg" alt="">
                </div>
                <div class="card-body">
                    <p>TUTORIAL</p>
                    <h4>Learn Fundamentals</h4>
                    <p><b>5</b> of <b>15</b> lessons completed</p>
                    <p>Fundamentals are necessary to learn core concepts of Java</p>
                    <div class="percentage">
                        <h2>33%</h2>
                    </div>
                    <div class="slider">
                        <div class="range"></div>
                    </div>
                </div>
            </div> -->
        </div>
    </div>
	
	<%
		JsonObject jsonObject = (JsonObject) request.getAttribute("json");
		String json = jsonObject.toString();
	%>
	
	<%@include file="jsp-FooterSection.jsp"%>
	
	<script type="text/javascript">
		let jsonData = <%= json %>
		
	</script>
	
	<script type="text/javascript" src="./JS/learningPath.js"></script>
</body>
</html>