<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JAVAHIVE</title>
<link rel="stylesheet" href="./CSS/css-Home.css">
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+
			Neue&family=Kanit:wght@600&family=Lato:wght@300&family=Oswald&family=Ubuntu
			:wght@300&display=swap" rel="stylesheet">
			
<script src="https://kit.fontawesome.com/40962f4670.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- including the navigation bar in the page -->
	<jsp:include page="jsp-Navbar.jsp" />
	
	<section class="home-section">
        <div class="home">
        	<img alt="" src="./Images/pin5.jpg" id="home-pin">

            <div class="home-content">
                <h1>Complete Java</h1>
                <h1>Tutorials</h1>
                <div>
                    <strong>
                        <p>Learn <em>Complete Java</em> with our comprehensive tutorials on <br><em>JAVAHIVE.</em></p>
                    </strong>
                </div>

                <div class="start">
                    <a href="#tut-sec1">Get Started</a>
                </div>
            </div>
        </div>
    </section>

	<!-- including the Explore Section in the page -->
    <jsp:include page="jsp-ExploreSection.jsp" />
    
    <!-- including the HomeContent Section in the page -->
    <jsp:include page="jsp-ContentSection.jsp" />

	<!-- including the Tutorials Section in the page -->
    <jsp:include page="jsp-tutorialsSection.jsp" />
    
    <!-- including the FAQ Section in the page -->
    <jsp:include page="jsp-FAQ.jsp" />

	<!-- including the Review Section in the page -->
	<jsp:include page="jsp-SliderSection.jsp" />
	
	<!-- including the Footer Section in the page -->
	<jsp:include page="jsp-FooterSection.jsp" />

</body>
	<script type="text/javascript" src="./JS/script-HomeSlideShow.js"></script>
</html>