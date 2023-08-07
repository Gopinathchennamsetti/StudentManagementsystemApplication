
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script>
window.onload = function () {
		var divInfoToReturn = document.getElementById("divInfoToReturn");
		top.frames["displayFrame"].displayCustomerInfo(divInfoToReturn.innerHTML);
		};
		</script>
<title>Get Customer Data</title>
<%
	HashMap<Integer, String> customerList = new HashMap<Integer, String>();
	customerList.put(101, "Raj"+"\t contact no :996633445566");
	customerList.put(102, "Tharun"+"\t contact no :996633445577");
	customerList.put(103, "Prem"+"\t contact no :996633445588");
	customerList.put(104, "Vanathi"+"\t contact no :996633445456");
	customerList.put(105, "Abdhul"+"\t contact no :996633445886");
	customerList.put(106, "Henry"+"\t contact no :996633442222");
	
	String tmp = request.getParameter("id");
	int id = Integer.parseInt(tmp);
	String customerName = customerList.get(id);
	if(customerName==null){
		customerName = "Not Found";
	}

%>
</head>
<body>
<div id="divInfoToReturn"><%= customerName %></div>
</body>
</html>
