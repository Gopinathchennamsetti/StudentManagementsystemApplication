<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD STUDENT</title>
</head>
<body>
<h1 style="text-align:center">ADD STUDENT</h1>
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
insert into student values(?,?,?,?)
<sql:param value="${param.name}"/>
<sql:param value="${param.id}"/>
<sql:param value="${param.branch}"/>
<sql:param value="${param.cgpa}"/>
</sql:update>  
</body>
<h1> Inserted Successfully</h1>
</html>