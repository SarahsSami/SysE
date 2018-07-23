 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Project Resources</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content=" html5, css3, mobile first, responsive" />
	<meta name="author" content="ADWA" />
 
 

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
 <link rel="icon" href="images/favicon-96x96.png" type="image/ico"/>

	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,600,200italic,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Simple Line Icons -->
	<link rel="stylesheet" href="css/simple-line-icons.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	
	<link rel="stylesheet"  href="css/Style-2018.css" type="text/css" >
	<link rel="stylesheet"  href="css/LoginStyle.css" type="text/css" >
	

	<!-- 
	Default Theme Style 
	You can change the style.css (default color purple) to one of these styles
	
	1. pink.css
	2. blue.css
	3. turquoise.css
	4. orange.css
	5. lightblue.css
	6. brown.css
	7. green.css

	-->
	<link rel="stylesheet" href="css/lightblue.css">

	<script src="js/modernizr-2.6.2.min.js"></script>

</head>

<body>

<%
    //to display the ideas from database to ideas bank 
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "marketing";
String userId = "root";
String password = "";
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultset = null;
try {
connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();
String user= ""+session.getAttribute("id");
String sql = "SELECT * FROM marketing.users where ID ="+user;
resultset = statement.executeQuery(sql);
resultset.next();
%>

<div id="wrapper">

<!-- Navigation-->
    <!--      <img src="images/SE.png" style="width:20%; height:20%; "/> -->

	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container"> 
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span> 
            </button>
        </div>
        <div style="margin-left:0px"class="collapse navbar-collapse">
            <ul  class="nav navbar-nav">         
            <li><a style="font-size:30px; color:#52678c">System Engineering &nbsp; &nbsp; |</a>  </li>
            
                <li><a href="indexSE.jsp" style="margin-left:18px;">Home</a></li>
                <li><a href="Tutorial.jsp" >Tutorial</a></li>
             
                <li> <a href="Logout.jsp">Sign out</a></li>

             </ul>
             
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user"></span>   
                        <strong id="login"><%=session.getAttribute("name")%></strong>
                 <!--     <span class="glyphicon glyphicon-chevron-down"></span> -->
                        
                    </a>
                </li>
            </ul>
        </div>
    </div>
 </div>
 		



 <!-- page content-->



	<div id="fh5co-press" data-section="Services" style="margin-top:0px; ">
 		 <div class="container"  >
 		 
 		 
			<div class="row">
			
							<div class="col-md-12 section-heading text-center">  
								<h2 class="single-animate animate-press-1">Add Project Resources</h2>
			


<!--view projects example -->
<!-- Portfolio Gallery Grid -->
<div class="main1" style="    text-align:center; margin-left:320px; margin-top:70px">

<div class="row1"style="">


                            <div class="EditInfoStyle" style="	width:500px">
                            
                            
       <div class="form-area">
<form action="addresServlet" method="post"> 



<h3 style="float: left;" >‣  Select project:</h3>

<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from project") ;
%> 
 <select  class="form-control" name="projects">  
      <%
      
      resultset.first();%>
      
   
      <option> <%= resultset.getString(2) %></option>
   <%    while (resultset.next()){ %>
      
      <option> <%=  resultset.getString(2) %></option>
      <%} %>
      
      </select><br>
      
  <%       } 
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        } 
%>







     
<%

int[] array =new int[10];
for(int i=0;i<10;i++){
if(i==0){
%>


<h3 style="float: left;">Select System engineer:</h3>

<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'SE'") ;
%> 


      <select class="form-control"  name="SE">  
      <%
      
      resultset.first();%>
       <option>none</option>
   
      <option> <%= resultset.getString(2) %></option>
   <%    while (resultset.next()){ %>
      
      <option> <%=   resultset.getString(2) %></option>
      <%} %>
      
      </select>
      
  <%       } 
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        } 
%>






<% } else if(i==1){
%>
<h3 style="float: left; ">Select Customer:</h3>
<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'customer'") ;
%> 


      <select class="form-control"  name="cus">  
      <%
      
      resultset.first();%>
             <option>none</option>
      
    
      <option> <%= resultset.getString(2) %></option>
   <%    while (resultset.next()){ %>
      
      <option> <%= resultset.getString(2) %></option>
      <%} %>
      
      </select>
      
  <%       } 
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        } 
%>




<% } else if(i==2){ %>

<h3 style="float: left;">Select Configuration manager:</h3>



<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'cm'") ;
%> 


      <select class="form-control"  name="cm">  
      <%
      
      resultset.first();%>
             <option>none</option>
      
      <option> <%=  resultset.getString(2) %></option>
   <%    while (resultset.next()){ %>
      
      <option> <%=  resultset.getString(2) %></option>
      <%} %>
      
      </select>
      
  <%       } 
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        } 
%>





<% } else if(i==3){ %>


<h3 style="float: left;">Select Product manager:</h3>


<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'productM'") ;
%> 


      <select class="form-control"  name="productM">  
      <%
      
      resultset.first();%>
             <option>none</option>
      
      <option> <%= resultset.getString(2) %></option>
   <%    while (resultset.next()){ %>
      
      <option> <%= resultset.getString(2) %></option>
      <%} %>
      
      </select>
      
  <%       } 
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        } 
%>





<% } else if(i==4){ %>

<h3 style="float: left;">Select Program manager:</h3>


<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'programM'") ;
%> 


      <select class="form-control"  name="programM">  
      <%
      
      resultset.first();%>
             <option>none</option>
      
      <option> <%=  resultset.getString(2) %></option>
   <%    while (resultset.next()){ %>
      
      <option> <%=  resultset.getString(2) %></option>
      <%} %>
      
      </select>
      
  <%       } 
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        } 
%>






<% } else if(i==5){ %>


<h3 style="float: left;">Select Program manager:</h3>




<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'tester'") ;
%> 


      <select class="form-control"  name="tester">  
      <%
      
      resultset.first();%>
             <option>none</option>
      
      <option> <%=  resultset.getString(2) %></option>
   <%    while (resultset.next()){ %>
      
      <option> <%=   resultset.getString(2) %></option>
      <%} %>
      
      </select>
      
  <%       } 
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        } 
%>


<% } else if(i==6){ %>

<h3 style="float: left;">Select System designer:</h3>



<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'designer'") ;
%> 


      <select class="form-control"  name="designer">  
      <%
      
      resultset.first();%>
             <option>none</option>
      
    
      <option> <%=  resultset.getString(2) %></option>
   <%    while (resultset.next()){ %>
      
      <option> <%=   resultset.getString(2) %></option>
      <%} %>
      
      </select>
      
  <%       } 
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        } 
%>




<% } else if(i==7){ %>

<h3 style="float: left;">Select System quality manager:</h3>




<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'quality'") ;
%> 


      <select class="form-control"  name="quality">  
      <%
      
      resultset.first();%>
             <option>none</option>
      
      <option> <%=   resultset.getString(2) %></option>
   <%    while (resultset.next()){ %>
      
      <option> <%=  resultset.getString(2) %></option>
      <%} %>
      
      </select>
      
  <%       } 
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        } 
%>

<% } else if(i==8){ %>

<h3 style="float: left;">Select System implementer:</h3>




<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'imp'") ;
%> 

<select class="form-control" name="imp">  
      <%
      
      resultset.first();%>
             <option>none</option>
      
      <option> <%=  resultset.getString(2) %></option>
   <%    while (resultset.next()){ %>
      
      <option> <%=  resultset.getString(2) %></option>
      <%} %>
      
      </select>
      
  <%       } 
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        } 
%>

<% } else if(i==9){ %>

<h3 style="float: left;" >Select Technical leader:</h3>





<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'Tleader'") ;
%> 


      <select class="form-control" name="leader">  
      <%
      
      resultset.first();%>
             <option>none</option>
      
      <option> <%=  resultset.getString(2) %></option>
   <%    while (resultset.next()){ %>
      
      <option> <%=   resultset.getString(2) %></option>
      <%} %>
      
      </select>
      
  <%       } 
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        } 
%>

<%} %>


<%}}
catch (Exception e) {
e.printStackTrace();
} %>
<br><br>

  <input style="margin-bottom:0px" type="submit" value="Submit">
</form> 
</div></div></div></div></div></div></div></div>

<!--footer-->
            
	<footer id="footer" role="contentinfo">
		<div class="container">
			<div class="row row-bottom-padded-sm">
				<div class="col-md-12">
					<p class="copyright text-center">&copy;  <a href="index.html">KACST ECP 2017</a>. All Rights Reserved. <br> </p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">
					<ul class="social social-circle">
						<li><a href="#"><i class="icon-twitter"></i></a></li>
						<li><a href="#"><i class="icon-facebook"></i></a></li>
						<li><a href="#"><i class="icon-youtube"></i></a></li>
						<li><a href="#"><i class="icon-pinterest"></i></a></li>
						<li><a href="#"><i class="icon-linkedin"></i></a></li>
						<li><a href="#"><i class="icon-instagram"></i></a></li>
						<li><a href="#"><i class="icon-dribbble"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
 
	</footer>


</body>
</html>

