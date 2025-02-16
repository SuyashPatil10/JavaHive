<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

<link href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+Neue&family=Kanit:
			wght@600&family=Lato:wght@300&family=Oswald&family=Ubuntu:wght@300&display=swap"
    		rel="stylesheet">

    <link rel="stylesheet" href="./CSS/css-slider.css">
    <link rel="stylesheet" href="./CSS/swiper-bundle.min.css">
</head>
<body>

	<div class="review-heading">
            <h1>Top Website Reviews</h1>
            <div class="line"></div>
    </div>
	<section class="review-sec">
        <div class="slide-container swiper">
            <div class="slide-content">
                <div class="card-wrapper swiper-wrapper">
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>

                            <div class="card-image">
                                <img src="./Images/avatar-1.png" alt="" class="card-img">
                            </div>
                        </div>

                        <div class="card-content">
                            <h2 class="name"><strong>Brad Pitt</strong></h2>
                            <p class = "reviewers-id"><em>@bradpitt</em></p>
                            <p class="description">
                                JavaHive is an excellent resource for mastering Java 
                                programming. The tutorials are well-structured, easy to follow,
                                and provide a comprehensive understanding of Java concepts. 
                                Highly recommended!
                            </p>
                            
                        </div>
                    </div>

                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>

                            <div class="card-image">
                                <img src="./Images/avatar-2.png" alt="" class="card-img">
                            </div>
                        </div>

                        <div class="card-content">
                            <h2 class="name"><strong>Christian Bale</strong></h2>
                            <p class = "reviewers-id"><em>@christianbale</em></p>
                            <p class="description">
                                I stumbled upon JavaHive while learning Java, and it has 
                                been a game-changer. The tutorials are clear, concise, and 
                                cover both basics and advanced topics. A must-visit for anyone 
                                diving into Java.
                            </p>
                            
                        </div>
                    </div>

                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>

                            <div class="card-image">
                                <img src="./Images/avatar-3.png" alt="" class="card-img">
                            </div>
                        </div>

                        <div class="card-content">
                            <h2 class="name"><strong>Margot Robbie</strong></h2>
                            <p class = "reviewers-id"><em>@margotrobbie</em></p>
                            <p class="description">
                                JavaHive made Java learning a breeze for me. The content 
                                is presented in a way that's easy to understand, and the 
                                practical examples help solidify concepts. Great work, 
                                JavaHive team!
                            </p>
                            
                        </div>
                    </div>

                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>

                            <div class="card-image">
                                <img src="./Images/avatar-4.png" alt="" class="card-img">
                            </div>
                        </div>

                        <div class="card-content">
                            <h2 class="name"><strong>Emily Blunt</strong></h2>
                            <p class = "reviewers-id"><em>@emilyblunt</em></p>
                            <p class="description">
                                As a beginner in Java, I found JavaHive to be an invaluable 
                                resource. The step-by-step tutorials, along with real-world 
                                examples, have accelerated my learning. I'm now confident in 
                                my Java skills!
                            </p>
                            
                        </div>
                    </div>

                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>

                            <div class="card-image">
                                <img src="./Images/avatar-5.png" alt="" class="card-img">
                            </div>
                        </div>

                        <div class="card-content">
                            <h2 class="name"><strong>Anne Hathaway</strong></h2>
                            <p class = "reviewers-id"><em>@annehathway</em></p>
                            <p class="description">
                                JavaHive is my go-to platform for Java tutorials. The content 
                                is up-to-date, and the website's user-friendly design enhances 
                                the learning experience. Kudos to the creators for this 
                                fantastic resource!
                            </p>
                            
                        </div>
                    </div>
                </div>
            </div>

            <div class="swiper-button-next swiper-navBtn"></div>
            <div class="swiper-button-prev swiper-navBtn"></div>
            <div class="swiper-pagination"></div>
        </div>
    </section>
</body>

	<script src="./JS/swiper-bundle.min.js"></script>
	<script src="./JS/script-slider.js"></script>
</html>