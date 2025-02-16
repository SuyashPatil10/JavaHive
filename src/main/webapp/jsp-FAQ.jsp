<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./CSS/css-FAQ.css">
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+
			Neue&family=Kanit:wght@600&family=Lato:wght@300&family=Oswald&family=Ubuntu
			:wght@300&display=swap" rel="stylesheet">
</head>
<body>
	<section class="faq-section">
	<div class="faqs">
        <div class="title">
            <h1>FAQ's</h1>
            <div class="line"></div>
        </div>

        <div class="acc-container">
            <div class="acc-content">
                <div class="accordian">
                    <div class="question">
                        <h4>What is Java programming language used for?</h4>
                        <i class="icon fa-solid fa-caret-down"></i>
                    </div>
                    <div class="answer">
                        <p>
                            Java is a versatile programming language used for developing web applications, mobile
                            applications, enterprise systems, and more due to its platform independence and robust
                            features.
                        </p>
                    </div>
                </div>

                <div class="accordian">
                    <div class="question">
                        <h4>How do I install Java on my computer?</h4>
                        <i class="icon fa-solid fa-caret-down"></i>
                    </div>
                    <div class="answer">
                        <p>
                            You can install Java by downloading and installing the Java Development Kit (JDK) from the
                            official Oracle website or by using package managers like apt or brew.
                        </p>
                    </div>
                </div>

                <div class="accordian">
                    <div class="question">
                        <h4>What is the difference between Java SE, Java EE, and Java ME?</h4>
                        <i class="icon fa-solid fa-caret-down"></i>
                    </div>
                    <div class="answer">
                        <p>
                            Java SE (Standard Edition) is for general-purpose desktop and server applications, Java EE
                            (Enterprise Edition) is for enterprise-level applications, and Java ME (Micro Edition) is
                            for mobile and embedded systems.
                        </p>
                    </div>
                </div>

                <div class="accordian">
                    <div class="question">
                        <h4>How do I declare a variable in Java?</h4>
                        <i class="icon fa-solid fa-caret-down"></i>
                    </div>
                    <div class="answer">
                        <p>
                            Variables in Java are declared using a data type followed by the variable name. For
                            example:<br>
                            "int myNumber;"
                        </p>
                    </div>
                </div>
            </div>


            <div class="acc-content">
                <div class="accordian">
                    <div class="question">
                        <h4>What is the role of the main() method in Java?</h4>
                        <i class="icon fa-solid fa-caret-down"></i>
                    </div>
                    <div class="answer">
                        <p>
                            The main() method is the entry point of a Java program. It is the method where the execution
                            of the program begins.
                        </p>
                    </div>
                </div>

                <div class="accordian">
                    <div class="question">
                        <h4>How does Java achieve platform independence?</h4>
                        <i class="icon fa-solid fa-caret-down"></i>
                    </div>
                    <div class="answer">
                        <p>
                            Java achieves platform independence by compiling code into an intermediate form called
                            bytecode, which can run on any device with the Java Virtual Machine (JVM).
                        </p>
                    </div>
                </div>

                <div class="accordian">
                    <div class="question">
                        <h4>What is an object in Java?</h4>
                        <i class="icon fa-solid fa-caret-down"></i>
                    </div>
                    <div class="answer">
                        <p>
                            In Java, an object is an instance of a class. It encapsulates data and behavior and is a key
                            concept in object-oriented programming.
                        </p>
                    </div>
                </div>

                <div class="accordian">
                    <div class="question">
                        <h4>How can I handle exceptions in Java?</h4>
                        <i class="icon fa-solid fa-caret-down"></i>
                    </div>
                    <div class="answer">
                        <p>
                            Exceptions in Java are handled using try-catch blocks. Code that might throw an exception is
                            placed in the try block, and corresponding catch blocks handle specific exceptions.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
</body>
	<script type="text/javascript" src="./JS/script-FAQ.js"></script>
</html>