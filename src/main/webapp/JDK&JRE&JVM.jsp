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
                <h1>Differences between JDK, JRE and JVM</h1>
            </div>

            <div class="text-area">
                <p class="text">
                    <b>Java Development Kit (JDK)</b> is a software development environment used for developing Java
                    applications and applets. It includes the Java Runtime Environment (JRE), an interpreter/loader
                    (Java), a compiler (javac), an archiver (jar), a documentation generator (Javadoc), and other tools
                    needed in Java development.
                </p>

                <p class="text">
                    Now we need an environment to make a run of our program. Henceforth, JRE stands for "Java Runtime
                    Environment" and may also be written as <b>"Java RTE."</b> The Java Runtime Environment provides the
                    minimum requirements for executing a Java application; it consists of the Java Virtual Machine
                    (JVM), core classes, and supporting files.
                </p>

                <p class="text">
                    Now let us discuss JVM, which stands out for java virtual machines. It is as follows:
                </p>

                <ul class="text-list">
                    <li class="list">A specification where the working of Java Virtual Machine is specified. But
                        implementation provider is independent to choose the algorithm. Its implementation has been
                        provided by Sun and other companies.
                    </li>
                    <li class="list">
                        An implementation is a computer program that meets the requirements of the JVM specification.
                    </li>
                    <li class="list">
                        <b>Runtime Instance</b> Whenever you write a java command on the command prompt to run the java
                        class,
                        an instance of JVM is created.
                    </li>
                </ul>

                <p class="text">
                    Before proceeding to the differences between JDK, JRE, and JVM, let us discuss them in brief first
                    and interrelate them with the image below proposed.
                </p>

            </div>

            <div class="image">
                <img src="./Images/JDK.png" alt="">
            </div>

            <div class="text-area">
                <p class="text">
                    Don't get confused as we are going to discuss all of them one by one.
                </p>

                <ol class="text-list">
                    <li class="list">
                        <b>JDK</b> (Java Development Kit) is a Kit that provides the environment to develop and
                        execute(run)
                        the Java program. JDK is a kit(or package) that includes two things.
                    </li>

                    <ul class="text-list">
                        <li class="list">
                            Development Tools(to provide an environment to develop your java programs).
                        </li>
                        <li class="list">
                            JRE (to execute your java program).
                        </li>
                    </ul>

                    <li class="list">
                        <b>JRE</b> (Java Runtime Environment) is an installation package that provides an environment to
                        only
                        run(not develop) the java program(or application)onto your machine. JRE is only used by those
                        who only want to run Java programs that are end-users of your system.
                    </li>

                    <li class="list">
                        <b>JVM</b> (Java Virtual Machine) is a very important part of both JDK and JRE because it is
                        contained
                        or inbuilt in both. Whatever Java program you run using JRE or JDK goes into JVM and JVM is
                        responsible for executing the java program line by line, hence it is also known as an
                        interpreter.

                        Now let us discuss the components of JRE in order to understand its importance of it and
                        perceive how it actually works. For this let us discuss components.
                    </li>
                </ol>


                <p class="text">
                    The components of JRE are as follows:
                </p>

                <ol class="text-list">
                    <li class="list">
                        <b>Deployment technologies,</b> including deployment, Java Web Start, and Java Plug-in.
                    </li>

                    <li class="list">
                        <b>User interface toolkits,</b> including Abstract Window Toolkit (AWT), Swing, Java 2D,
                        Accessibility,
                        Image I/O, Print Service, Sound, drag, and drop (DnD), and input methods.
                    </li>

                    <li class="list">
                        <b>Integration libraries,</b> including Interface Definition Language (IDL), Java Database
                        Connectivity
                        (JDBC), Java Naming and Directory Interface (JNDI), Remote Method Invocation (RMI), Remote
                        Method Invocation Over Internet Inter-Orb Protocol (RMI-IIOP), and scripting.
                    </li>

                    <li class="list">
                        <b>Other base libraries,</b> including international support, input/output (I/O), extension
                        mechanism,
                        Beans, Java Management Extensions (JMX), Java Native Interface (JNI), Math, Networking, Override
                        Mechanism, Security, Serialization, and Java for XML Processing (XML JAXP).
                    </li>

                    <li class="list">
                        <b>Lang and util base libraries,</b> including lang and util, management, versioning, zip,
                        instrument,
                        reflection, Collections, Concurrency Utilities, Java Archive (JAR), Logging, Preferences API,
                        Ref Objects, and Regular Expressions.
                    </li>

                    <li class="list">
                        <b>Java Virtual Machine (JVM),</b> including Java HotSpot Client and Server Virtual Machines.
                    </li>
                </ol>
            </div>


            <div class="read-page">
                <p>Mark as Read</p>
                <form action="${pageContext.request.contextPath}/pageController" method="post" id="read-form">
                	<input type="hidden" name="fundamentals" value="fundamentals-2">
                    <input type="checkbox" class="toggle read-doc" id="toggle">
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