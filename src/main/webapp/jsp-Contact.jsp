<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="./CSS/css-Contact.css">
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+Neue&family=Kanit:
    wght@600&family=Lato:wght@300&family=Oswald&family=Ubuntu:wght@300&display=swap" 
    rel="stylesheet">
</head>
<body>
	<!-- including the navigation bar in the page -->
	<jsp:include page="jsp-Navbar.jsp" />
	
	<section class="contact-info">
        <div class="contact-container">
            <div class="contact-content">
                <div class="contact-form">

                    <h3>Get a Call Back</h3>
                    <p id="error"></p>

                    <form action="#" onsubmit="ValidateForm(event)">
                        <input class="inputs" type="text" name="name" placeholder="Full Name">

                        <input class="inputs" type="text" name="email" placeholder="Email ID">

                        <input class="inputs" type="text" name="number" placeholder="Phone Number">

                        <input class="inputs" type="text" name="message" placeholder="Message">

                        <input class="inputs" type="submit" value="send">
                    </form>
                </div>
                <div class="location">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15273.
                    229179521488!2d74.19235614257381!3d16.860686678444953!2m3!1f0!2f0!3f0!3m2!
                    1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc1a80a7c8a6b7b%3A0x2a6e33b9af5d4171!2s
                    Tatyasaheb%20Kore%20Institute%20of%20Engineering%20%26%20Technology%20
                    (An%20Autonomous%20Institute)!5e0!3m2!1sen!2sin!4v1705394153429!5m2!1sen!2sin"
                     width="600" height="450" style="border:0;" allowfullscreen="" 
                     loading="lazy" referrerpolicy="no-referrer-when-downgrade">
                     </iframe>
                </div>
            </div>
        </div>
    </section>
    
    <!-- including the Footer Section in the page -->
	<jsp:include page="jsp-FooterSection.jsp" />
</body>
	<script src="./JS/script-Contact.js"></script>
</html>