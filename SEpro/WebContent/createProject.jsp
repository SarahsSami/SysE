<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">


<title>SE | Create project </title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
</head>


<body>

<!-- Navigation-->

<!--Path
<div id="Path">
<ul>
<li><a href="indexPM.jsp">Home</a></li>
  </ul>
 </div>-->


 
 <!-- page content-->

<h1 class="headings">Create new project</h1>

<div>



<!--view projects example -->
<!-- Portfolio Gallery Grid -->
<form id="loginForm" method="post" action="creServlet"> 
  Project name:<br>
  <input type="text" name="pname" value="">
  <br>
  Project logo:<br>
  <input type="file" name="pic">
  Project description:<br>
  <textarea name="pdesc" style="width:350px; height:200px">
</textarea><br>
    
    
   
  <br><br>
  <input type="submit" value="Create">
</form> 

<br/> <br/> <br/> <br/> <br/> <br/> <br/>  <br/> <br/> <br/> <br/> <br/> <br/> <br/>  <br/> <br/> <br/> <br/> <br/> <br/> <br/><br/> <br/> <br/> <br/> <br/> <br/> <br/>  <br/> <br/> <br/> <br/> <br/> <br/> <br/>  <br/> <br/> <br/> <br/> <br/> <br/> <br/>
 </div>



<!-- Navigation-->
<nav>
    <img src="images/verticalline.png" alt="" />

</nav>


<!--footer-->
<div id="footer">
Copyright &copy; SE, KACST 
</div>



</div><!--wrapper div-->

</body>
</html>