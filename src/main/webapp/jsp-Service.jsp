<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="./CSS/css-Service.css">
    <link
        href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+Neue&family=Kanit:wght@600&family=Lato:wght@300&family=Oswald&family=Ubuntu:wght@300&display=swap"
        rel="stylesheet">

    <script src="https://kit.fontawesome.com/40962f4670.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- including the navigation bar in the page -->
	<jsp:include page="jsp-Navbar.jsp" />

	<section class="service-info">
        <div class="service-container">
            <div class="description">

                <div class="des1">
                    <h1>Services We Provide</h1>
                </div>

                <div class="des2">
                    <h3>
                        Unlock the power of Java with JavaHive's services. Our tutorials guide you through the intricacies of Core and Advanced Java, enhancing your coding prowess. From multithreading to JDBC and Servlets, master the essentials and elevate your development journey. Empower your Java skills with our expertly crafted, user-friendly tutorials at JavaHive.
                    </h3>

                    <p>Want to Use the Services?</p>
                </div>
                
                <div class="des3">
                    <a href="#">Start <i class="fa-solid fa-arrow-right"></i></a>
                </div>
            </div>
            
            <div class="serviceImg">
                <img class="serviceImage" src="./Images/about-img.png" alt="">
            </div>
        </div>
    </section>

    <section class="service-info2">
        <div class="service-header">
            <h2>Our Services</h2>
            <p>Explore diverse services at JavaHive for a enriched learning experience.</p>
        </div>

        <div class="service-provider">
            <div class="service-slate">
                <div class="service-card">
                    <div class="icon-tag">
                        <i class="fa-brands fa-free-code-camp"></i>
                    </div>
                    <div class="card-info">
                        <h3>Tutorials</h3>
                        <p>Explore comprehensive Java tutorials on JavaHive for expert programming skills.</p>
                        <p><a href="#">Know more <i class="fa-solid fa-arrow-right"></i></a></p>
                    </div>
                </div>

                <div class="service-card">
                    <div class="icon-tag">
                        <i class="fa-solid fa-layer-group"></i>
                    </div>
                    <div class="card-info">
                        <h3>Core</h3>
                        <p>Master Core Java fundamentals with in-depth tutorials on JavaHive.</p>
                        <p><a href="#">Know more <i class="fa-solid fa-arrow-right"></i></a></p>
                    </div>
                </div>

                <div class="service-card">
                    <div class="icon-tag">
                        <i class="fa-solid fa-server"></i>
                    </div>
                    <div class="card-info">
                        <h3>Advance</h3>
                        <p>Dive into Advanced Java concepts with detailed tutorials on JavaHive.</p>
                        <p><a href="#">Know more <i class="fa-solid fa-arrow-right"></i></a></p>
                    </div>
                </div>

                <div class="service-card">
                    <div class="icon-tag">
                        <i class="fa-regular fa-circle-question"></i>
                    </div>
                    <div class="card-info">
                        <h3>Questions</h3>
                        <p>Boost your Java knowledge with in-depth interview questions at JavaHive.</p>
                        <p><a href="#">Know more <i class="fa-solid fa-arrow-right"></i></a></p>
                    </div>
                </div>
            </div>
        </div>

        <div class="service-footerPara">
            <h4>
                Discover a spectrum of services at JavaHive, designed for seamless learning. From user-friendly tutorials to expertly crafted interview questions, JavaHive provides a comprehensive platform for Java enthusiasts to enhance their skills and knowledge.
            </h4>
        </div>
    </section>
    
    <!-- including the Footer Section in the page -->
	<jsp:include page="jsp-FooterSection.jsp" />
</body>
</html>