<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>deletestudent.jsp</title>
</head>
<body>




<style>
    body{
        background-image: url(https://images6.alphacoders.com/123/1233563.jpg);
    background-repeat: no-repeat;
    background-attachment:fixed;
    background-size:cover;
    }
    h1{color:brown;}
</style>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/gndb"  
     user="root"  password="12345678"/>  
   
  
<sql:update dataSource="${db}" var="student"> 
delete from student where id=?
<sql:param value="${param.id}"/>
</sql:update>  
<h1 style="text-align:center"> STUDENT RECORD DELETED SUCCESSFULLY</h1>
</body>
</html>