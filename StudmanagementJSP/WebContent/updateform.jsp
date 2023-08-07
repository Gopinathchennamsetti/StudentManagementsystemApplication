<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<title>UPDATE FORM</title>
</head>
<body>


<h1 style="text-align:center">UPDATE FORM </h1>
<style>
    body{
        background-image: url(https://images6.alphacoders.com/123/1233563.jpg);
    background-repeat: no-repeat;
    background-attachment:fixed;
    background-size:cover;
    }
    h1{color:brown;}
</style>

<head>
<meta charset="ISO-8859-1">

</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/gndb"  
     user="root"  password="12345678"/>  
   
  
<sql:query dataSource="${db}" var="r"> 
select * from student where id=?
<sql:param value="${param.id}"/>
</sql:query>  

<form method="get" action="updatestudent.jsp"  align="center" style="margin-top:1%">
Id     <input type="text" name="id" value="${r.rows[0].id}"/><br><br><br>
Name   <input type="text"  name="name" value="${r.rows[0].name}"><br><br><br>
Branch <input type="text" name="branch" value="${r.rows[0].branch}"><br><br><br>
CGPA   <input type="text" name="cgpa" value="${r.rows[0].cgpa}"><br><br><br>
 <input type="submit" value="UpdateStudent"><br><br>

</form>

</body>
</html>