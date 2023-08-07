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

<html>
<head>
<meta charset="ISO-8859-1">
<title>validation</title>
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
<form method="post" action="#" align="center" style="margin:40px 300px;border:3px solid gray;border-radius:50px;padding:40px;">
<br><br><br>
<%

String name=request.getParameter("sname");
String id=request.getParameter("sregno");
String dob=request.getParameter("dob");
String branch=request.getParameter("sbranch");
String gender=request.getParameter("gender");
String hb[]=request.getParameterValues("hb");
String email=request.getParameter("semail");
String feedback=request.getParameter("sfeedback");
String nothing="";
if(name.equals(nothing))
{
	out.println("<font color=red> Pls Fill the Name!</font><br>");
}

int a=Integer.parseInt(id);

if(a>=124003100 )
{
	out.println("<font color=red> Pls Fill the Registration Number in given range!</font><br>");
}
out.println("<br><h3>DISPLAYING INFORMATION<h3><br>");
out.println("\nSTUDENT NAME :"+name+"\n <br>STUDENT ID:"+id+"\n <br>D.O.B :"+dob+"\n<br>Gender:"+gender+"<br>BRANCH:"+branch);
out.println("<br>HOBBIES<br><br>");
out.println("FEEDBACK :"+feedback);
if(hb!=null &&hb.length!=0)
{
	for(int i=0;i<hb.length;i++)
	{
		out.println(hb[i]);
	}
}


%>
</form>
</body>
</html>