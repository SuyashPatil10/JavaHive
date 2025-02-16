<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

    <link
        href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+Neue&family=Kanit:wght@600&family=Lato:wght@300&family=Oswald&family=Ubuntu:wght@300&display=swap"
        rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.25.0/themes/prism.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="./CSS/sidebar.css">
	<link rel="stylesheet" href="./CSS/prism.css">
	
    <script src="https://kit.fontawesome.com/40962f4670.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="side">
            <h1 class="side-head">Tutorials</h1>

            <div class="side-content-list">
                <h3 class="side-list-head">Java Fundamentals </h3>
                <ul class="side-list">
                    <li class="side-list-link"><a href="introduction.jsp">Introduction</a></li>
                    <li class="side-list-link"><a href="JDK&JRE&JVM.jsp">JDK, JRE & JVM</a></li>
                    <li class="side-list-link"><a href="JVMPage.jsp">JVM</a></li>
                    <li class="side-list-link"><a href="variables.jsp">Variables</a></li>
                    <li class="side-list-link"><a href="#">Data Types</a></li>
                    <li class="side-list-link"><a href="#">Conditions</a></li>
                    <li class="side-list-link"><a href="#">Loops</a></li>
                    <li class="side-list-link"><a href="#">Loop Control</a></li>
                    <li class="side-list-link"><a href="#">Arrays</a></li>
                    <li class="side-list-link"><a href="#">Array Methods</a></li>
                    <li class="side-list-link"><a href="#">Strings</a></li>
                    <li class="side-list-link"><a href="#">String Methods</a></li>
                    <li class="side-list-link"><a href="#">Methods</a></li>
                    <li class="side-list-link"><a href="#">Access Modifiers</a></li>
                    <li class="side-list-link"><a href="#">Class</a></li>
                    <li class="side-list-link"><a href="#">Interface</a></li>
                </ul>
            </div>

            <div class="side-content-list">
                <h3 class="side-list-head">Java OOPs</h3>
                <ul class="side-list">
                    <li class="side-list-link"><a href="#">Java Class</a></li>
                    <li class="side-list-link"><a href="#">Interface</a></li>
                    <li class="side-list-link"><a href="#">Objects</a></li>
                    <li class="side-list-link"><a href="#">Data Hiding</a></li>
                    <li class="side-list-link"><a href="#">Abstraction</a></li>
                    <li class="side-list-link"><a href="#">Encapsulation</a></li>
                    <li class="side-list-link"><a href="#">Is-a Relationship</a></li>
                    <li class="side-list-link"><a href="#">Has-a Relationship</a></li>
                    <li class="side-list-link"><a href="#">Method Signature</a></li>
                    <li class="side-list-link"><a href="#">Method Overloadig</a></li>
                    <li class="side-list-link"><a href="#">Method Overriding</a></li>
                    <li class="side-list-link"><a href="#">Static Control Flow</a></li>
                    <li class="side-list-link"><a href="#">Instance Control Flow</a></li>
                    <li class="side-list-link"><a href="#">Contructors</a></li>
                    <li class="side-list-link"><a href="#">Coupling</a></li>
                    <li class="side-list-link"><a href="#">Cohesion</a></li>
                </ul>
            </div>

            <div class="side-content-list">
                <h3 class="side-list-head">Exception Handling </h3>
                <ul class="side-list">
                    <li class="side-list-link"><a href="#">Introduction</a></li>
                    <li class="side-list-link"><a href="#">Runtime Stack Mechanism</a></li>
                    <li class="side-list-link"><a href="#">Default exception handling</a></li>
                    <li class="side-list-link"><a href="#">Exception Hierarchy</a></li>
                    <li class="side-list-link"><a href="#">Customized exceptions</a></li>
                    <li class="side-list-link"><a href="#">Try-catch Control Flow</a></li>
                    <li class="side-list-link"><a href="#">Exception Methods</a></li>
                    <li class="side-list-link"><a href="#">Multiple Catch Block</a></li>
                    <li class="side-list-link"><a href="#">Finally Block</a></li>
                    <li class="side-list-link"><a href="#">Throw Keyword</a></li>
                    <li class="side-list-link"><a href="#">Throws Keyword</a></li>
                    <li class="side-list-link"><a href="#">User defined Exceptions</a></li>
                    <li class="side-list-link"><a href="#">Top 10 Exceptions</a></li>
                </ul>
            </div>


            <div class="side-content-list">
                <h3 class="side-list-head">Multithreading </h3>
                <ul class="side-list">
                    <li class="side-list-link"><a href="#">Introduction</a></li>
                    <li class="side-list-link"><a href="#">Extend Thread</a></li>
                    <li class="side-list-link"><a href="#">Implement Runnable</a></li>
                    <li class="side-list-link"><a href="#">Thread Priorities</a></li>
                    <li class="side-list-link"><a href="#">yield() Method</a></li>
                    <li class="side-list-link"><a href="#">join() Method</a></li>
                    <li class="side-list-link"><a href="#">sleep() Method</a></li>
                    <li class="side-list-link"><a href="#">Synchronization</a></li>
                    <li class="side-list-link"><a href="#">InterThread Communication</a></li>
                    <li class="side-list-link"><a href="#">Dead Lock</a></li>
                    <li class="side-list-link"><a href="#">Deamon Thread</a></li>
                </ul>
            </div>


            <div class="side-content-list">
                <h3 class="side-list-head">Inner Classes</h3>
                <ul class="side-list">
                    <li class="side-list-link"><a href="#"> Regular Inner Class</a></li>
                    <li class="side-list-link"><a href="#">Method Local Inner Class</a></li>
                    <li class="side-list-link"><a href="#">Anonymous inner Class</a></li>
                    <li class="side-list-link"><a href="#">Static Nested Class</a></li>
                </ul>
            </div>

            <div class="side-content-list">
                <h3 class="side-list-head">Lang Package</h3>
                <ul class="side-list">
                    <li class="side-list-link"><a href="#">Introduction</a></li>
                    <li class="side-list-link"><a href="#">Object Class</a></li>
                    <li class="side-list-link"><a href="#">String Class</a></li>
                    <li class="side-list-link"><a href="#">StringBuffer</a></li>
                    <li class="side-list-link"><a href="#">StringBuilder</a></li>
                    <li class="side-list-link"><a href="#">Wrapper Classes</a></li>
                    <li class="side-list-link"><a href="#">Auto-Boxing</a></li>
                    <li class="side-list-link"><a href="#">Auto-Unboxing</a></li>
                </ul>
            </div>

            <div class="side-content-list">
                <h3 class="side-list-head">File Handling</h3>
                <ul class="side-list">
                    <li class="side-list-link"><a href="#">File Class</a></li>
                    <li class="side-list-link"><a href="#">FileWriter</a></li>
                    <li class="side-list-link"><a href="#">FileReader</a></li>
                    <li class="side-list-link"><a href="#">BufferedWriter</a></li>
                    <li class="side-list-link"><a href="#">BufferedReader</a></li>
                    <li class="side-list-link"><a href="#">PrintWriter</a></li>
                </ul>
            </div>

            <div class="side-content-list">
                <h3 class="side-list-head">Serialization</h3>
                <ul class="side-list">
                    <li class="side-list-link"><a href="#">Introduction</a></li>
                    <li class="side-list-link"><a href="#">Object Graph</a></li>
                    <li class="side-list-link"><a href="#">Customized Serialization</a></li>
                    <li class="side-list-link"><a href="#">Serialization wrt inheritance</a></li>
                    <li class="side-list-link"><a href="#">SerialVersionUID</a></li>
                </ul>
            </div>


            <div class="side-content-list">
                <h3 class="side-list-head">Collections </h3>
                <ul class="side-list">
                    <li class="side-list-link"><a href="#">Arrays</a></li>
                    <li class="side-list-link"><a href="#">Array Limitation</a></li>
                    <li class="side-list-link"><a href="#">Key Interfaces</a></li>
                    <li class="side-list-link"><a href="#">Implemented Classes</a></li>
                    <li class="side-list-link"><a href="#">Collection Hierarchy</a></li>
                    <li class="side-list-link"><a href="#">Collection</a></li>
                    <li class="side-list-link"><a href="#">List</a></li>
                    <li class="side-list-link"><a href="#">ArrayList</a></li>
                    <li class="side-list-link"><a href="#">LinkedList</a></li>
                    <li class="side-list-link"><a href="#">Vector (L)</a></li>
                    <li class="side-list-link"><a href="#">Stack (L)</a></li>
                    <li class="side-list-link"><a href="#">Set</a></li>
                    <li class="side-list-link"><a href="#">HashSet</a></li>
                    <li class="side-list-link"><a href="#">LinkedHashSet</a></li>
                    <li class="side-list-link"><a href="#">Comparable</a></li>
                    <li class="side-list-link"><a href="#">Comparator</a></li>
                    <li class="side-list-link"><a href="#">SortedSet</a></li>
                    <li class="side-list-link"><a href="#">NavigableSet</a></li>
                    <li class="side-list-link"><a href="#">TreeSet</a></li>
                    <li class="side-list-link"><a href="#">Queue</a></li>
                    <li class="side-list-link"><a href="#">PriorityQueue</a></li>
                    <li class="side-list-link"><a href="#">BlockingQueue</a></li>
                    <li class="side-list-link"><a href="#">Map</a></li>
                    <li class="side-list-link"><a href="#">HAshMap</a></li>
                    <li class="side-list-link"><a href="#">LinkedHashMap</a></li>
                    <li class="side-list-link"><a href="#">WeakHashMap</a></li>
                    <li class="side-list-link"><a href="#">IdentityHashMap</a></li>
                    <li class="side-list-link"><a href="#">HashTable (L)</a></li>
                    <li class="side-list-link"><a href="#">Properties (L)</a></li>
                    <li class="side-list-link"><a href="#">SortedMap</a></li>
                    <li class="side-list-link"><a href="#">NavigableMap</a></li>
                    <li class="side-list-link"><a href="#">TreeMap</a></li>
                    <li class="side-list-link"><a href="#">Utility Classes</a></li>
                </ul>
            </div>

            <div class="side-content-list">
                <h3 class="side-list-head">Generics </h3>
                <ul class="side-list">
                    <li class="side-list-link"><a href="#">Introduction</a></li>
                    <li class="side-list-link"><a href="#">Generic Classes</a></li>
                    <li class="side-list-link"><a href="#">Bounded Types</a></li>
                    <li class="side-list-link"><a href="#">Wild-Card Character</a></li>
                    <li class="side-list-link"><a href="#">Non-Generic Code Interaction</a></li>
                    <li class="side-list-link"><a href="#">Conclusions</a></li>
                </ul>
            </div>

            <div class="side-content-list">
                <h3 class="side-list-head">Garbage Collection</h3>
                <ul class="side-list">
                    <li class="side-list-link"><a href="#">Introduction</a></li>
                    <li class="side-list-link"><a href="#">Object Elegible to GC</a></li>
                    <li class="side-list-link"><a href="#">Methods to run GC</a></li>
                    <li class="side-list-link"><a href="#">Finalization</a></li>
                </ul>
            </div>
        </div>
    
    <script type="text/javascript" src="./JS/sidebar.js"></script>
    <script type="text/javascript" src="./JS/prism.js"></script>
</body>
</html>