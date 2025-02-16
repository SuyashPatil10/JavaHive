<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./CSS/main.css">
</head>
<body>
	
	<div class="pre-loader">
        <div class="loader"></div>
    </div>

	<%@include file="jsp-Navbar.jsp" %>
	
	<div class="tutorial-body">
	
		<%@include file="sidebar.jsp" %>
	
		<div class="main">
            <div class="header">
                <h1 class="main-topic">Introduction to Java</h1>
            </div>

            <div class="text-area">
                <p class="text">
                    Java is a class-based, object-oriented programming language that is designed to have as few
                    implementation dependencies as possible. It is intended to let application developers write once,
                    and run anywhere (WORA), meaning that compiled Java code can run on all platforms that support Java
                    without the need for recompilation. Java was first released in 1995 and is widely used for
                    developing applications for desktop, web, and mobile devices. Java is known for its simplicity,
                    robustness, and security features, making it a popular choice for enterprise-level applications.
                </p>

                <p class="text">
                    <b>JAVA</b> was developed by James Gosling at Sun Microsystems Inc in the year <b>1995</b> and later
                    acquired by
                    Oracle Corporation. It is a simple programming language. Java makes writing, compiling, and
                    debugging programming easy. It helps to create reusable code and modular programs. Java is a
                    class-based, object-oriented programming language and is designed to have as few implementation
                    dependencies as possible. A general-purpose programming language made for developers to write once
                    run anywhere that is compiled Java code can run on all platforms that support Java. Java
                    applications are compiled to byte code that can run on any Java Virtual Machine. The syntax of Java
                    is similar to c/c++.
                </p>



            </div>
            <!-- <p class="text">

                </p> -->

            <div class="image">
                <img src="./Images/java-info1.jpg" alt="">
            </div>

            <div class="text-area">
                <h1 class="min-header">
                    History
                </h1>

                <p class="text">
                    Java's history is very interesting. It is a programming language created in 1991. James Gosling,
                    Mike Sheridan, and Patrick Naughton, a team of Sun engineers known as the Green team initiated the
                    Java language in 1991. Sun Microsystems released its first public implementation in 1996 as Java
                    1.0. It provides no-cost -run-times on popular platforms. Java1.0 compiler was re-written in Java by
                    Arthur Van Hoff to strictly comply with its specifications. With the arrival of Java 2, new versions
                    had multiple configurations built for different types of platforms.
                </p>

                <p class="text">
                    In 1997, Sun Microsystems approached the ISO standards body and later formalized Java, but it soon
                    withdrew from the process. At one time, Sun made most of its Java implementations available without
                    charge, despite their proprietary software status. Sun generated revenue from Java through the
                    selling of licenses for specialized products such as the Java Enterprise System.
                </p>

                <p class="text">
                    On November 13, 2006, Sun released much of its Java virtual machine as free, open-source software.
                    On May 8, 2007, Sun finished the process, making all of its JVM's core code available under
                    open-source distribution terms.
                </p>

                <p class="text">
                    Implementation of a Java application program involves a following step. They include:
	                <p>1. Creating the program.</p>
	                <p>2. Compiling the program.</p>
	                <p>3. Running the program.</p>
	                <p class="text"></p>
                </p>

                <h1 class="min-header">
                    Why Java named JAVA ?
                </h1>

                <p class="text">
                    After the name OAK, the team decided to give it a new name to it and the suggested words were Silk,
                    Jolt, revolutionary, DNA, dynamic, etc. These all names were easy to spell and fun to say, but they
                    all wanted the name to reflect the essence of technology. In accordance with James Gosling, Java the
                    among the top names along with Silk, and since java was a unique name so most of them preferred it.
                </p>

                <p class="text">
                    Java is the name of an island in Indonesia where the first coffee(named java coffee) was produced.
                    And this name was chosen by James Gosling while having coffee near his office. Note that Java is
                    just a name, not an acronym.
                </p>
            </div>


            <div class="text-area">
                <h1 class="min-header">First Java Program</h1>
            </div>

            <div class="code">
                <pre>
<code class="language-java">
class Sample {
    public static void main(String args[])
    {
        System.out.println("Hello World!");
    }
}
</code>
</pre>
            </div>

            <div class="read-page">
                <p>Mark as Read</p>
                <form action="${pageContext.request.contextPath}/pageController" method="post" id="read-form">
                	<input type="hidden" name="fundamentals" value="fundamentals-1">
                    <input type="checkbox" class="toggle read-doc" id="toggle"
                        >
                    <label for="toggle"></label>
                </form>
            </div>

        </div>
        
        <%@include file="adds.jsp" %>
	</div>
	
	<%
 		String success = (String) session.getAttribute("markedPage");
 		String error = (String) session.getAttribute("storePageError");
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
	
	<%@include file="jsp-FooterSection.jsp" %>
	
	<script type="text/javascript">
		setTimeout(function() {
			const successMsg = document.querySelector('.success-msg');
			if (successMsg) {
			    successMsg.style.display = 'none';
			    <% session.removeAttribute("markedPage"); %>
			}
	
			const errorMsg = document.querySelector('.error-msg');
			if (errorMsg) {
			    errorMsg.style.display = 'none';
			    <% session.removeAttribute("storePageError"); %>
			}
		}, 5000);
	</script>
	
	<script type="text/javascript" src="./JS/checkPage.js"></script>
</body>
</html>