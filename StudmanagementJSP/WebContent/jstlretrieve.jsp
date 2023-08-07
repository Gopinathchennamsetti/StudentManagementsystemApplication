<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<body>
<h1> RETRIVING DATA</h1>

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/gndb"  
     user="root"  password="12345678"/>  
   

<sql:query dataSource="${db}" var="rs">
select * from student

</sql:query>
<c:forEach var="table" items="$rs.rows}">
<c:out value="${table.id}"/>
<c:out value="${table.name}"/>
<c:out value="${table.branch}"/>
<c:out value="${table.cgpa}"/>

</c:forEach>


</body>
</html>