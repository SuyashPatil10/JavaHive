<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="./CSS/css-About.css">
    <link
        href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+Neue&family=Kanit:wght@600&family=Lato:wght@300&family=Oswald&family=Ubuntu:wght@300&display=swap"
        rel="stylesheet">
</head>
<body>
	<!-- including the navigation bar in the page -->
	<jsp:include page="jsp-Navbar.jsp" />

	<section class="About-info">
        <div class="About-container">
            <div class="About-description">

                <div class="about-des1">
                    <h1>About Us</h1>
                </div>

                <div class="about-des2">
                    <h3>
                        At JavaHive, we're on a mission to make Java accessible to everyone. Our About Us page reflects our commitment to simplifying the learning journey. Explore Core and Advanced Java through user-friendly tutorials, covering essential topics without overwhelming jargon. Join us for an approachable and professional Java learning experience.
                    </h3>

                    <p>Want to Know More About Us?</p>
                </div>
                
                <div class="about-des3">
                    <a href="#1">Know More <i class="fa-solid fa-arrow-right"></i></a>
                </div>
            </div>
            
            <div class="AboutImg">
                <img class="AboutImage" src="./Images/slider-img.png" alt="">
            </div>
        </div>
    </section>
    
        <section class="AboutFAQ" id="1">
        <div class="FAQ-header">
            <h3>Know Us Through Questions!</h3>
            <div class="line"></div>
        </div>

        <div class="acc-container">
            <div class="acc-content">
                <div class="accordian">
                    <div class="question">
                        <h4>What do we do at JavaHive?</h4>
                        <i class="icon fa-solid fa-caret-down"></i>
                    </div>
                    <div class="answer">
                        <p>
                        	At JavaHive, we provide comprehensive and accessible Java tutorials. From Core to Advanced Java, we simplify complex concepts, making them understandable for learners of all levels. Our goal is to empower individuals to master Java programming through expertly crafted, user-friendly content.
                        </p>
                    </div>
                </div>

                <div class="accordian">
                    <div class="question">
                        <h4>What is our aim at JavaHive?</h4>
                        <i class="icon fa-solid fa-caret-down"></i>
                    </div>
                    <div class="answer">
                        <p>
                            Our aim at JavaHive is to democratize Java education. We strive to make Java programming accessible to everyone by offering well-structured and easy-to-follow tutorials. Our goal is to empower learners to build strong foundations in Java, fostering confidence and expertise in programming.
                        </p>
                    </div>
                </div>

                <div class="accordian">
                    <div class="question">
                        <h4>How Can JavaHive Help You?</h4>
                        <i class="icon fa-solid fa-caret-down"></i>
                    </div>
                    <div class="answer">
                        <p>
                            JavaHive can empower your programming journey by offering comprehensive Java tutorials. From Core to Advanced Java, dive into multithreading, JDBC, Servlets, and more. Our user-friendly platform guides you through coding intricacies, boosting your skills and confidence for successful Java development. Explore, learn, and elevate your programming expertise with JavaHive.
                        </p>
                    </div>
                </div>

                <div class="accordian">
                    <div class="question">
                        <h4>How Can JavaHive Make a Difference in Your Learning Experience?</h4>
                        <i class="icon fa-solid fa-caret-down"></i>
                    </div>
                    <div class="answer">
                        <p>
                            JavaHive stands out in your learning experience by providing structured and detailed Java tutorials. Our comprehensive guides cover Core and Advanced Java concepts, ensuring a deep understanding. Engage with hands-on examples, practical insights, and expertly crafted content to enhance your coding skills and excel in Java development. Elevate your learning journey with JavaHive's commitment to quality education.
                        </p>
                    </div>
                </div>

                <div class="accordian">
                    <div class="question">
                        <h4>Who Drives JavaHive's Success?</h4>
                        <i class="icon fa-solid fa-caret-down"></i>
                    </div>
                    <div class="answer">
                        <p>
                            JavaHive's success is driven by a passionate team of experienced educators and Java enthusiasts. Our dedicated instructors and developers are committed to delivering high-quality, engaging, and user-friendly Java tutorials. With their expertise and enthusiasm, they empower learners to master Java programming and succeed in their coding endeavors.
                        </p>
                    </div>
                </div>

                <div class="accordian">
                    <div class="question">
                        <h4>How Does JavaHive Support Java Enthusiasts?</h4>
                        <i class="icon fa-solid fa-caret-down"></i>
                    </div>
                    <div class="answer">
                        <p>
                            JavaHive supports Java enthusiasts by providing comprehensive, accessible, and expertly crafted tutorials. Our platform offers a structured learning path, covering Core and Advanced Java concepts, interview preparation, and more. With hands-on examples and clear explanations, JavaHive ensures a supportive and empowering learning experience for Java enthusiasts of all levels.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- including the Footer Section in the page -->
	<jsp:include page="jsp-FooterSection.jsp" />
</body>
	<script src="./JS/script-About.js"></script>
</html>