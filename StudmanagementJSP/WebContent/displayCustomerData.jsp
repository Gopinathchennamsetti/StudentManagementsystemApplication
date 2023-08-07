<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<style>
    body{
        background-image: url(https://wallpaperaccess.com/full/1209535.jpg);
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
       
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
	function requestCustomerInfo() {
		var sId = document.getElementById("txtCustomerId").value;
		top.frames["hiddenFrame"].location = "getCustomer.jsp?id=" + sId;
	}
	
	function displayCustomerInfo(sText) {
		var divCustomerInfo = document.getElementById("divCustomerInfo");
		divCustomerInfo.innerHTML = sText;
	}
	
</script>

</head>
<body>
<p>Enter service provider  ID number to retrieve information:</p>
<p>Contact person  ID: <input type="text" id="txtCustomerId" value="" /></p>
<p><input type="button" value="Get Customer Info"
onclick="requestCustomerInfo()" /></p>
<div id="divCustomerInfo"></div>
</body>
</html>