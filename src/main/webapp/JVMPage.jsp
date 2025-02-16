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
                <h1>JVM (Java Virtual Machine)</h1>
            </div>

            <div class="text-area">
                <p class="text">
                    JVM (Java Virtual Machine) is an abstract machine. It is a specification that provides runtime
                    environment in which java bytecode can be executed.
                </p>

                <p class="text">
                    JVMs are available for many hardware and software platforms (i.e. JVM is platform dependent).
                </p>

                <h1 class="min-header">What is JVM</h1>

                <p class="text">
                    it is:
                </p>

                <ol class="text-list">
                    <li class="list">
                        A specification where working of Java Virtual Machine is specified. But implementation provider
                        is independent to choose the algorithm. Its implementation has been provided by Oracle and other
                        companies.
                    </li>

                    <li class="list">
                        An implementation Its implementation is known as JRE (Java Runtime Environment).
                    </li>

                    <li class="list">
                        Runtime Instance Whenever you write java command on the command prompt to run the java class, an
                        instance of JVM is created.
                    </li>
                </ol>

                <h1 class="min-header">
                    What it does
                </h1>

                <p class="text">
                    JVM performs following operations
                </p>

                <ul class="text-list">
                    <li class="list">Loads code</li>
                    <li class="list">Verifies code</li>
                    <li class="list">Executes code</li>
                    <li class="list">Provides runtime environment</li>
                </ul>

                <p class="text">
                    JVM provides definitions for the:
                </p>

                <ul class="text-list">
                    <li class="list">Memory area</li>
                    <li class="list">Class file format</li>
                    <li class="list">Register set</li>
                    <li class="list">Garbage-collected heap</li>
                    <li class="list">Fatal error reporting etc.</li>
                </ul>

                <h1 class="min-header">JVM Architecture</h1>
            </div>

            <div class="image">
                <img src="./Images/jvm-arc.png" alt="">

            </div>

            <div class="text-area">
                <h1 class="min-header">1) Class Loader</h1>

                <p class="text">
                    Classloader is a subsystem of JVM which is used to load class files. Whenever we run the java
                    program, it is loaded first by the classloader. There are three built-in classloaders in Java.
                </p>

                <ol class="text-list">
                    <li class="list">
                        <b>Bootstrap ClassLoader:</b> This is the first classloader which is the super class of
                        Extension classloader. It loads the rt.jar file which contains all class files of Java Standard
                        Edition like java.lang package classes, java.net package classes, java.util package classes,
                        java.io package classes, java.sql package classes etc.
                    </li>

                    <li class="list">
                        <b>Extension ClassLoader:</b> This is the child classloader of Bootstrap and parent classloader
                        of System classloader. It loades the jar files located inside $JAVA_HOME/jre/lib/ext directory.
                    </li>

                    <li class="list">
                        <b>System/Application ClassLoader:</b> This is the child classloader of Extension classloader.
                        It loads the classfiles from classpath. By default, classpath is set to current directory. You
                        can change the classpath using "-cp" or "-classpath" switch. It is also known as Application
                        classloader.
                    </li>
                </ol>
            </div>

            <div class="code">
                <pre>
<code class="language-java">
//Let's see an example to print the classloader name  
public class ClassLoaderExample  
{  
    public static void main(String[] args)  
    {  
        // Let's print the classloader name of current class.   
        //Application/System classloader will load this class  
        Class c=ClassLoaderExample.class;  
        System.out.println(c.getClassLoader());  
        //If we print the classloader name of String, it will print null because it is an  
        //in-built class which is found in rt.jar, so it is loaded by Bootstrap classloader  
        System.out.println(String.class.getClassLoader());  
    }  
}     
</code>
</pre>
            </div>

            <div class="code">
                <pre>
<code class="language-java">
sun.misc.Launcher$AppClassLoader@4e0e2f2a
null    
</code>
</pre>
            </div>

            <div class="text-area">
                <p class="text">
                    These are the internal classloaders provided by Java. If you want to create your own classloader,
                    you need to extend the ClassLoader class.
                </p>

                <h1 class="min-header">2) Class(Method) Area</h1>

                <p class="text">
                    Class(Method) Area stores per-class structures such as the runtime constant pool, field and method
                    data, the code for methods.
                </p>

                <h1 class="min-header">3) Heap</h1>

                <p class="text">
                    It is the runtime data area in which objects are allocated.
                </p>

                <h1 class="min-header">4) Stack</h1>

                <p class="text">
                    Java Stack stores frames. It holds local variables and partial results, and plays a part in method
                    invocation and return.
                </p>

                <p class="text">
                    Each thread has a private JVM stack, created at the same time as thread.
                </p>

                <p class="text">
                    A new frame is created each time a method is invoked. A frame is destroyed when its method
                    invocation completes.
                </p>

                <h1 class="min-header">5) Program Counter Register</h1>

                <p class="text">
                    PC (program counter) register contains the address of the Java virtual machine instruction currently
                    being executed.
                </p>

                <h1 class="min-header">6) Native Method Stack</h1>

                <p class="text">
                    It contains all the native methods used in the application.
                </p>

                <h1 class="min-header">7) Execution Engine</h1>

                <p class="text">
                    It conntains:
                </p>

                <ul class="text-list">
                    <li class="list">
                        <b>A virtual processor</b>
                    </li>

                    <li class="list">
                        <b>Interpreter:</b> Read bytecode stream then execute the instructions.
                    </li>

                    <li class="list">
                        <b>Just-In-Time(JIT) compiler:</b> It is used to improve the performance. JIT compiles parts of
                        the
                        byte code that have similar functionality at the same time, and hence reduces the amount of time
                        needed for compilation. Here, the term "compiler" refers to a translator from the instruction
                        set of a Java virtual machine (JVM) to the instruction set of a specific CPU.
                    </li>
                </ul>


                <h1 class="min-header">8) Java Native Interface</h1>

                <p class="text">
                    Java Native Interface (JNI) is a framework which provides an interface to communicate with
                    another application written in another language like C, C++, Assembly etc. Java uses JNI
                    framework to send output to the Console or interact with OS libraries.
                </p>

            </div>

            <div class="read-page">
                <p>Mark as Read</p>
                <form action="${pageContext.request.contextPath}/pageController" method="post" id="read-form">
                	<input type="hidden" name="fundamentals" value="fundamentals-3">
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