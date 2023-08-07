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

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FORM VALIDATION </title>
</head>
<style>
    body{
        background-image: url(https://images6.alphacoders.com/123/1233563.jpg);
    background-repeat: no-repeat;
    background-attachment:fixed;
    background-size:cover;
    }
    h1{color:brown;}
</style>
<script> 



function validateemail()  
{  
	 
	
	var status=false;  
	
var x=document.myform.semail.value;  
var num=document.myform.sregno.value;

var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  //alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
  document.getElementById("mailloc").innerHTML="<font color=red>Please enter a valid e-mail address</font>";
  status= false;  
  }  
  
  
  
if (isNaN(num)){  
  document.getElementById("numloc").innerHTML="<font color=red>Enter Numeric value only</font>";  
 status= false;  
}else{  
  status= true;  
  } 
  return status;
} 

</script> 

<body bgcolor="cyan">
<h1 style="text-align:center">REGISTRATION FORM</h1>


<form name="myform" method="post" action="valid.jsp" align="center" style="margin:60px 300px;border:3px solid gray;border-radius:50px;padding:40px;" onsubmit=" return validateemail();" >
<table style="width:30">
<tr>
<td>ENTER REGNO</td>
<td> <input type="text" name="sregno" id="sregno">
<span id="numloc"></span>
</td>
</tr>
<tr>
<img style="float:right;"src="https://thumbs.dreamstime.com/b/diverse-hands-holding-word-volunteer-41013777.jpg" width="150px"

height="150px" alt="img">

<td>ENTER NAME</td>
<td> <input type="text" name="sname" id="sname" required>
</td></tr>

<tr>


<tr>
<td>ENTER Email</td>
<td> <input type="text" name="semail" id="semail">
<span id="mailloc"></span></td>
</tr>


<tr>
<td>D.O.B</td>
<td><input type="date" name="dob"> </td>
</tr>

<tr>
<tr>
<td>GENDER</td>
<td> <input type="radio" name="gender" id="gender" value="male">MALE &emsp;<input type="radio" name="gender" id="gender" value="female">FEMALE</td>
</tr>
<tr>
<td>HOBBIES</td>
<td> <input type="checkbox" name="hb" id="hb" value="playing">PLAYING &emsp;<input type="checkbox" name="hb" id="hb" value="singing">SINGING &emsp;<input type="checkbox" name="hb" id="hb" value="reading">READING &emsp;<td> <input type="checkbox" name="hb" id="hb" value="dancing">DANCING</td>

</tr>
<td> BRANCH </td>
<td><input type="text" name="sbranch" id="sbranch"></td>
</tr>
</tr>
<td> FEEDBACK </td>
<td><input type="text" name="sfeedback" id="sfeedback"></td>
</tr>
<tr>
<td><input type="submit"  value="submit" ></td>
<td><input type="button"  value="validate" onclick="return validateemail();"></td>
</tr>
</table>
</form>
</body>
</html>