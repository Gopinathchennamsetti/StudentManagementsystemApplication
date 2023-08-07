<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE STUDENT</title>
<style>
    body{
        background-image: url(https://images6.alphacoders.com/123/1233563.jpg);
    background-repeat: no-repeat;
    background-attachment:fixed;
    background-size:cover;
    }
    h1{color:brown;}
</style>
</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/gndb"  
     user="root"  password="12345678"/>  
    
  
<sql:update dataSource="${db}" var="r"> 
update student set name=?,branch=? ,cgpa=? where id=?
<sql:param value="${param.name}"/>
<sql:param value="${param.branch}"/>
<sql:param value="${param.cgpa}"/>
<sql:param value="${param.id}"/>
</sql:update> 
<h1 style="text-align:center">UPDATED SUCCESSFULLY<h1>
</body>
</html>