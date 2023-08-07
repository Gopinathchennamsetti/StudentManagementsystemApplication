<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<!--home page-->

<html>
    <head>
<style>
    body{
        background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL0epDeyX45YLVk_vTWBl49yps3vDU5a9dpw&usqp=CAU);
    background-repeat: no-repeat;
    background-attachment:fixed;
    background-size:cover;
    }
    h1{color:brown;text-align:center;}

    .myDiv {
  border: 5px outset green;
  background-color:lightblue;
  text-align: center;
}
</style>
       
    </head>
    <body>
       
        <img style="float:left;"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJaJl9M3YMdflSxmgtrJp6qIvNTpxQqZbhaw&usqp=CAU" width="150px"
        height="150px" alt="img">
        &emsp;&emsp;&emsp;&emsp;
       
        <a href="index.html">HOME</a>&emsp;&emsp;&emsp;&emsp;&emsp;
        <a href="addstudent.html">ADD STUDENT</a>&emsp;&emsp;&emsp;&emsp;&emsp;
        <a href="deletestudent.html">DELETE STUDENT</a>&emsp;&emsp;&emsp;&emsp;
        <a href="updatestudent.html">UPDATE STUDENT</a>&emsp;&emsp;&emsp;&emsp;
        <a href="jspstudents.jsp">DISPLAY STUDENT</a>&emsp;&emsp;&emsp;&emsp;
        <a href="index.jsp">REGISTRATION FORM </a>
        
    </body>
</html>

<!--homepage end-->


<head>
<meta charset="ISO-8859-1">
<title>STUDENT DETAILS</title>
</head>


<h1 style="text-align:center">DISPLAYING  STUDENT RECORDS </h1>
<style>
    body{
        background-image: url(https://images6.alphacoders.com/123/1233563.jpg);
    background-repeat: no-repeat;
    background-attachment:fixed;
    background-size:cover;
    }
    h1{color:brown;}
</style>

<body>
	<%
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost/gndb";
	String user = "root";
	String pass = "12345678";
	
	// variables
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;

	// Step 1: Loading or registering Oracle JDBC driver class
	try {

		Class.forName(driver);
	
		// Step 2.A: Create and get connection using DriverManager class
		connection = DriverManager.getConnection(url,user,pass);

		// Step 2.B: Creating JDBC Statement 
		statement = connection.createStatement();

		// Step 2.C: Executing SQL & retrieve data into ResultSet
		resultSet = statement.executeQuery("SELECT * FROM student");
%>


		<table border="2" width="70%" align="center">  
		<tr>
			<th>NAME</th>
			<th>ID</th>
			<th>BRANCH</th>
			<th>CGPA</th>
		
		<% 

		

		// processing returned data and printing into console
		while (resultSet.next()) {
			out.println("<tr>");
			out.println("<td>"+resultSet.getString("name")+"</td>");
			out.println("<td>"+resultSet.getInt("id")+"</td>");
			out.println("<td>"+resultSet.getString("branch")+"</td>");
			out.println("<td>"+resultSet.getString("cgpa")+"</td>");
			out.println("</tr>");
			
		//	out.println(resultSet.getString("name") + " \t " + resultSet.getInt("id") + " \t\t\t"
			//+ resultSet.getString("branch") + " \t " + resultSet.getInt("cgpa"));
		}
	} catch (Exception e) {
		e.printStackTrace();
	} 	%>
</body>
</html>