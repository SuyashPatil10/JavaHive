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
                <h1>Java Variables</h1>
            </div>

            <div class="text-area">
                <p class="text">
                    A variable is a container which holds the value while the Java program is executed. A variable is
                    assigned with a data type.
                </p>

                <p class="text">
                    Variable is a name of memory location. There are three types of variables in java: local, instance
                    and static.
                </p>

                <p class="text">
                    There are two types of data types in Java: primitive and non-primitive.
                </p>

                <h1 class="min-header">Variables</h1>

                <p class="text">
                    A variable is the name of a reserved area allocated in memory. In other words, it is a name of the
                    memory location. It is a combination of "vary + able" which means its value can be changed.
                </p>

            </div>

            <div class="image">
                <img src="./Images/java-variables-1.png" alt="">
            </div>

            <div class="code">
                <pre>
<code class="language-java">
int data = 50; // Here data is variable.
</code>
</pre>
            </div>

            <div class="text-area">
                <h1 class="min-header">Types of Variables</h1>

                <ul class="text-list">
                    <li class="list">Local Variables</li>
                    <li class="list">Instance Variables</li>
                    <li class="list">Static Variables</li>
                </ul>
            </div>

            <div class="image">
                <img src="./Images/java-variables-2.png" alt="">
            </div>

            <div class="text-area">
                <p class="text"><b>1)Local Variable</b></p>

                <p class="text">A variable declared inside the body of the method is called local variable. You can
                    use this variable only within that method and the other methods in the class aren't even aware that
                    the variable exists.
                </p>

                <p class="text">
                    A local variable cannot be defined with "static" keyword.
                </p>

                <p class="text"><b>2) Instance Variable</b></p>

                <p class="text">
                    A variable declared inside the class but outside the body of the method, is called an instance
                    variable. It is not declared as static.
                </p>

                <p class="text">
                    It is called an instance variable because its value is instance-specific and is not shared among
                    instances.
                </p>

                <p class="text"><b>3) Static Variable</b></p>

                <p class="text">
                    A variable that is declared as static is called a static variable. It cannot be local. You can
                    create a single copy of the static variable and share it among all the instances of the class.
                    Memory allocation for static variables happens only once when the class is loaded in the memory.
                </p>
            </div>

            <div class="text-area">
                <h1 class="min-header">
                    Example to understand java variables.
                </h1>
            </div>

            <div class="code">
                <pre>
<code class="language-java">
public class A
{
    static int m = 100; // static variable.

    void method()
    {
        int n = 90; // local method.
    }

    public static void main(String[] args)
    {
        int data = 10; // instance variable.
    }
}
</code>
</pre>
            </div>

            <div class="text-area">
                <h1 class="min-header">
                    Variables to add two numbers
                </h1>
            </div>

            <div class="code">
                <pre>
<code class="language-java">
public class A
{
    public static void main(String[] args)
    {
        int a = 10;
        int b = 20;
        int c = a + b;
        System.out.println(c);
    }
}
</code>
</pre>
            </div>

            <div class="code">
                <pre>
<code class="language-java">
30
</code>
</pre>
            </div>

            <div class="text-area">
                <h1 class="min-header">
                    Variable Example: Widening
                </h1>
            </div>

            <div class="code">
                <pre>
<code class="language-java">
public class A
{
    public static void main(String[] args)
    {
        int a = 10;
        float b = a;
        System.out.println(a);
        System.out.println(b);
    }
}
</code>
</pre>
            </div>

            <div class="code">
                <pre>
<code class="language-java">
10
10.0
</code>
</pre>
            </div>


            <div class="text-area">
                <h1 class="min-header">
                    Variable Example: Narrowing (Type-Casting)
                </h1>
            </div>

            <div class="code">
                <pre>
<code class="language-java">
public class A
{
    public static void main(String[] args)
    {
        float f = 10.5f;
        // int a = f; // Compile-time Error
        int a = (int) f;
        System.out.println(f);
        System.out.println(a);
    }
}
</code>
</pre>
            </div>

            <div class="code">
                <pre>
<code class="language-java">
10.5
10
</code>
</pre>
            </div>

            <div class="text-area">
                <h1 class="min-header">
                    Variable Example: Overflow
                </h1>
            </div>

            <div class="code">
                <pre>
<code class="language-java">
public class A
{
    public static void main(String[] args)
    {
        int a = 130;
        byte b = (byte) a;
        System.out.println(a);
        System.out.println(b);
    }
}
</code>
</pre>
            </div>

            <div class="code">
                <pre>
<code class="language-java">
130
-126
</code>
</pre>
            </div>

            <div class="read-page">
                <p>Mark as Read</p>
                <form action="${pageContext.request.contextPath}/pageController" method="post" id="read-form">
                	<input type="hidden" name="fundamentals" value="fundamentals-4">
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