<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./CSS/profile.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

<script src="https://kit.fontawesome.com/40962f4670.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="pre-loader"></div>
	
	
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	
	
		if(session.getAttribute("userInfo") == null)
		{
			response.sendRedirect("/loginPage.jsp");
		}
	%>

    <%@include file="jsp-Navbar.jsp"%>

    <div class="container">
        <div class="aside" id="aside">
            <div class="primary-info">
                <div class="user-image">
                    <div class="image">
                        <i class="fa-solid fa-user"></i>
                    </div>

                    <h2><%= al.get(0)%> <%= al.get(1)%></h2>
                </div>
            </div>

            <div class="secondary-info">
                <div class="titles">
                    <h4>Email :</h4>
                    <h4>Phone :</h4>
                    <h4>State :</h4>
                    <h4>City :</h4>
                    <h4>Linkedin :</h4>
                    <h4>GitHub :</h4>
                </div>

                <div class="subjects">
                    <p><%= al.get(2)%></p>
                    <p><%= al.get(4)%></p>
                    <p><%= al.get(5)%></p>
                    <p><%= al.get(6)%></p>
                    <p class="URL"><%= al.get(7)%></p>
                    <p class="URL"><%= al.get(8)%></p>
                </div>
            </div>
        </div>

        <div class="my-learning" id="my-learning">
            <div class="learning">
            	<form id="logout-form" action="logoutController" method="post">
	                <i class="fa-solid fa-right-from-bracket"></i>
	                <button type="submit">Logout</button>
                </form>
            </div>

            <div class="learning">
            	<form action="learningPathController" method="post">
                	<i class="fa-solid fa-chalkboard-user"></i>
                	<button type="submit">My Learning</button>
            	</form>
            </div>
        </div>

        <div class="info-update" id="info-update">
            <form id="update-form" action="updateController" method="post">
                <div class="update-information">
                    <div class="update__inputs">
                        <p>First Name</p>
                        <input type="text" name="firstname" class="update-fields">
                    </div>

                    <div class="update__inputs">
                        <p>Last Name</p>
                        <input type="text" name="lastname" class="update-fields">
                    </div>
                </div>

                <div class="update-information">
                    <div class="update__inputs">
                        <p>Email Address</p>
                        <input type="text" name="email" class="update-fields" id="disabled-input" disabled>
                    </div>

                    <div class="update__inputs">
                        <p>Phone Number</p>
                        <input type="text" name="phone" class="update-fields">
                    </div>
                </div>

                <div class="update-information">
                    <div class="update__inputs">
                        <p>State</p>
                        <input type="text" name="state" class="update-fields">
                    </div>

                    <div class="update__inputs">
                        <p>City</p>
                        <input type="text" name="city" class="update-fields">
                    </div>
                </div>

                <div class="update-information">
                    <div class="update__inputs">
                        <p>Linkedin URL</p>
                        <input type="text" name="linkedin" class="update-fields">
                    </div>

                    <div class="update__inputs">
                        <p>GitHub URL</p>
                        <input type="text" name="github" class="update-fields">
                    </div>
                </div>

                <div class="update-btn">
                    <div class="btn">
                        <button type="submit" id="submit-btn">Save</button>
                    </div>
                    <div class="btn">
                        <button type="reset">Cancel</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
 	
 	<%
 		String success = (String) request.getAttribute("updateSuccess");
 		String error = (String) request.getAttribute("updateError");
 		
 	%>
 	
 	<%
 		if(success != null)
 		{
 	%>
 	<!-- style="display: block;" -->
 	<div class="success-msg">
 		<p><%= success%></p>
 	</div>
 	<%
 		} if(error != null) {
 	%>
 	
 	<div class="error-msg">
 		<p><%= error%></p>
 	</div>
 	
 	<% } %>
    <script>
	    const inputs = document.querySelectorAll('.update-fields');
	    inputs[0].value = `<%= al.get(0)%>`;
	    inputs[1].value = `<%= al.get(1)%>`;
	    inputs[2].value = `<%= al.get(2)%>`;
	    inputs[3].value = `<%= al.get(4)%>`;
	    inputs[4].value = `<%= al.get(5)%>`;
	    inputs[5].value = `<%= al.get(6)%>`;
	    inputs[6].value = `<%= al.get(7)%>`;
	    inputs[7].value = `<%= al.get(8)%>`;
		
	    const submit = document.getElementById('submit-btn');
	    const loader = document.querySelector('.pre-loader');
	    const form = document.getElementById('update-form');
	
	    const loaderDisplay = function () {
	        loader.style.display = "none";
	        form.submit();
	    }
	
	    submit.addEventListener('click', function (e) {
	        e.preventDefault();
	        if((inputs[0].value !== `<%= al.get(0)%>`) || (inputs[1].value !== `<%= al.get(1)%>`)
	        	||	(inputs[3].value !== `<%= al.get(4)%>`) || (inputs[4].value !== `<%= al.get(5)%>`)
	        	||	(inputs[5].value !== `<%= al.get(6)%>`) || (inputs[6].value !== `<%= al.get(7)%>`)
	        	||  (inputs[7].value !== `<%= al.get(8)%>`))
	        {
		        loader.style.display = "block";
		        setTimeout(loaderDisplay, 2000);
	        }
	    });
	    
	    setTimeout(function() {
	        const successMsg = document.querySelector('.success-msg');
	        if (successMsg) {
	            successMsg.style.display = 'none';
	        }

	        const errorMsg = document.querySelector('.error-msg');
	        if (errorMsg) {
	            errorMsg.style.display = 'none';
	        }
	    }, 5000);
    </script>
</body>
</html>