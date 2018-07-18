 
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
	<title>SE</title>
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

	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
	
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
ResultSet resultSet = null;
try {
connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();
String user= ""+session.getAttribute("id");
String sql = "SELECT * FROM marketing.users where ID ="+user;
resultSet = statement.executeQuery(sql);
resultSet.next();
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
                
                <li>  <% if(resultSet.getString("position").equals("pm")) { %>
                <a href="createProject.jsp">Create Project</a> <%}%></li>
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
 
 	<div id="fh5co-press" >
 		 <div class="container"  >
 		 
 		 
			<div class="row">
			
							<div class="col-md-12 section-heading text-center">  
								<h2 >Main Menu </h2>
			


<!--view projects example -->
<!-- Portfolio Gallery Grid -->
<div class="main1" style="    text-align:center; margin-left:0px; margin-top:70px">

<div class="row1"style="">
  <!--<div class="column1">
    <div class="content1">
        <img src="images/2.png" style="width:70%; height:70%">
      <h3 style="padding-top:0px">NEOM</h3>
                 
      <div class="button-tu">
                  <button  onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><span style="font-size:13px; cursor:pointer; text-align:center">Overview</span></button>
      </div>      
      <div class="Login">
      <div id="id01" class="modal">
      <div style="padding-bottom:15px" class="modal-content animate">
          <img src="images/1.png" style="width:auto">
                <h1>KACST</h1>
          <p style="padding:10px"><b>Description:</b> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor velit sit amet erat mattis ptesque. Integer ac tempus turpis. Mauris ultrices enim auctor lorem rutrum tempor. </p>
                    <span style="margin-right:250px"> <b>Project Phases:</b></span><br/>
                    
                    <img src="images/icon-1.png" style="width:30%; height:30% ">                   
                    <img src="images/icon-2.png" style="width:30%; height:30% ">
                    <img src="images/icon-3.png" style="width:30%; height:30% ">
                    <br/>
                    <img src="images/icon-4.png" style="width:30%; height:30% ">
                    <img src="images/icon-5.png" style="width:30%; height:30% ">
                    <img src="images/icon-6.png" style="width:30%; height:30% ">
                    <br/>
                    <img src="images/icon-7.png" style="width:30%; height:30% ">
          
      </div></div></div>  
    </div>
  </div>
  <div class="column1">
    <div class="content1">
      <a href="Project.jsp">
          <img src="images/1.png" style="width:70%; height:70% ">
      <h3 style="padding-top:0px" >KACST</h3></a>
           
      <div class="button-tu">
                  <button  onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><span style="font-size:13px; cursor:pointer; text-align:center">Overview</span></button>
      </div>      
      
      <div class="Login">
      <div id="id01" class="modal">
      <div class="modal-content animate">
          <img src="images/2.png" style="width:60%; height:60% ">
                <h1>KACST</h1>
          <p style="padding:10px"><b>Description:</b> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor velit sit amet erat mattis ptesque. Integer ac tempus turpis. Mauris ultrices enim auctor lorem rutrum tempor. </p>
                    <h4><b>Project Phases:</b> </h4>
                    <img src="images/icon-1.png" style="width:30%; height:30% ">                   
                    <img src="images/icon-2.png" style="width:30%; height:30% ">
                    <img src="images/icon-3.png" style="width:30%; height:30% ">
                    <br/>
                    <img src="images/icon-4.png" style="width:30%; height:30% ">
                    <img src="images/icon-5.png" style="width:30%; height:30% ">
                    <img src="images/icon-6.png" style="width:30%; height:30% ">
                    <br/>
                    <img src="images/icon-7.png" style="width:30%; height:30% ">
          
      </div></div></div>
    </div>
  </div>
  <div class="column1">
    <div class="content1">
        <img src="images/3.png" style="width:70%; height:70%">
      <h3 style="padding-top:0px">NASA</h3>
      
      <div class="button-tu">
                  <button  onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><span style="font-size:13px; cursor:pointer; text-align:center">Overview</span></button>
      </div>      
      <div class="Login">
      <div id="id01" class="modal">
      <div class="modal-content animate">
          <img src="images/4.png" style="width:60%; height:60% ">
                <h1>NASA</h1>
          <p style="padding:10px"><b>Description:</b> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor velit sit amet erat mattis ptesque. Integer ac tempus turpis. Mauris ultrices enim auctor lorem rutrum tempor. </p>
                    <img src="images/icon-1.png" style="width:30%; height:30% ">                   
                    <img src="images/icon-2.png" style="width:30%; height:30% ">
                    <img src="images/icon-3.png" style="width:30%; height:30% ">
                    <br/>
                    <img src="images/icon-4.png" style="width:30%; height:30% ">
                    <img src="images/icon-5.png" style="width:30%; height:30% ">
                    <img src="images/icon-6.png" style="width:30%; height:30% ">
                    <br/>
                    <img src="images/icon-7.png" style="width:30%; height:30% ">
          
      </div></div></div>
    </div>
  </div>
  
  
  
  </div>

  <div class="row1" >
    <div class="column1">
    <div class="content1">
        <img src="images/4.png" style="width:60%; height:60% ">
      <h3>GOOGLE</h3>
      
  
      <div class="button-tu">
                  <button  onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><span style="font-size:13px; cursor:pointer; text-align:center">Overview</span></button>
      </div>
      <div class="Login">
      <div id="id01" class="modal">
      <div class="modal-content animate">
          <img src="images/4.png" style="width:60%; height:60% ">
                <h1>Google</h1>
          <p style="padding:10px"><b>Description:</b> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor velit sit amet erat mattis ptesque. Integer ac tempus turpis. Mauris ultrices enim auctor lorem rutrum tempor. </p>
                    <img src="images/icon-1.png" style="width:30%; height:30% ">                   
                    <img src="images/icon-2.png" style="width:30%; height:30% ">
                    <img src="images/icon-3.png" style="width:30%; height:30% ">
                    <br/>
                    <img src="images/icon-4.png" style="width:30%; height:30% ">
                    <img src="images/icon-5.png" style="width:30%; height:30% ">
                    <img src="images/icon-6.png" style="width:30%; height:30% ">
                    <br/>
                    <img src="images/icon-7.png" style="width:30%; height:30% ">
          
      </div></div></div>
    </div>
  </div>
  <div class="column1">
    <div class="content1">
        <img src="images/5.png" style="width:60%; height:60%">
      <h3 style="padding-top:0px">APPLE inc.</h3>
      
      
      <div class="button-tu">
                  <button  onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><span style="font-size:13px; cursor:pointer; text-align:center">Overview</span></button>
      </div>
      <div class="Login">
      <div id="id01" class="modal">
      <div class="modal-content animate">
          <img src="images/5.png" style="width:60%; height:60% ">
                <h1>Apple inc.</h1>
          <p style="padding:10px"><b>Description:</b> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor velit sit amet erat mattis ptesque. Integer ac tempus turpis. Mauris ultrices enim auctor lorem rutrum tempor. </p>
                    <img src="images/icon-1.png" style="width:30%; height:30% ">                   
                    <img src="images/icon-2.png" style="width:30%; height:30% ">
                    <img src="images/icon-3.png" style="width:30%; height:30% ">
                    <br/>
                    <img src="images/icon-4.png" style="width:30%; height:30% ">
                    <img src="images/icon-5.png" style="width:30%; height:30% ">
                    <img src="images/icon-6.png" style="width:30%; height:30% ">
                    <br/>
                    <img src="images/icon-7.png" style="width:30%; height:30% ">
          
      </div></div></div>
    </div>
  </div>
  <div class="column1">
    <div class="content1">
        <img src="images/6.png" style="width:60%; height:60% ">
      <h3 style="padding-top:0px">MICROSOFT</h3> 
      
      
      <div class="button-tu">
                  <button  onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><span style="font-size:13px; cursor:pointer; text-align:center">Overview</span></button>
      </div>      
      <div class="Login">
      <div id="id01" class="modal">
      <div class="modal-content animate">
          <img src="images/6.png" style="width:60%; height:60% ">
                <h1>MICROSOFT</h1>
          <p style="padding:10px"><b>Description:</b> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor velit sit amet erat mattis ptesque. Integer ac tempus turpis. Mauris ultrices enim auctor lorem rutrum tempor. </p>
                    <img src="images/icon-1.png" style="width:30%; height:30% ">                   
                    <img src="images/icon-2.png" style="width:30%; height:30% ">
                    <img src="images/icon-3.png" style="width:30%; height:30% ">
                    <br/>
                    <img src="images/icon-4.png" style="width:30%; height:30% ">
                    <img src="images/icon-5.png" style="width:30%; height:30% ">
                    <img src="images/icon-6.png" style="width:30%; height:30% ">
                    <br/>
                    <img src="images/icon-7.png" style="width:30%; height:30% ">
          
      </div></div></div>
      
      
    </div>
  </div>-->
  
  

  
<%
    //to display the ideas from database to ideas bank 
/* String driverName = "com.mysql.jdbc.Driver";
 *//* String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "marketing";
String userId = "root";
String password = ""; */

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

/* Connection connection = null;

Statement statement = null;

ResultSet resultSet = null; */



try {

connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();
String user1= ""+session.getAttribute("id");
String sql1 = "SELECT * FROM marketing.project;";
resultSet = statement.executeQuery(sql1);
//resultSet.next();



%> 






 
   <% while (resultSet.next()) { %>

  <%String logo=null;
  String name = null;
  String des = null;
  logo = resultSet.getString("proLogo");
name = resultSet.getString("proName");
 des=resultSet.getString("proDes");
//int id =resultSet.getInt(1);
  %>
  
   <div class="column1">
    <div class="content1">
       <a href=<%="\" Project.jsp?id="+resultSet.getInt(1)+ "\"" %>> <div class="img-wrap" > <img style="width:100%; height:100% " src="<%=logo%>" ></a></div>
      <h3 style="padding-top:0px"><a href=<%="\" Project.jsp?id="+resultSet.getInt(1)+ "\"" %>><%=name%></a></h3> 
      
      
      <div class="button-tu">
                  <button  onclick="overview(event)" style="width:auto;"><span style="font-size:13px; cursor:pointer; text-align:center">Overview</span></button>
      </div>      
      <div class="Login">
      <div id="id01" class="modal">
      <div class="modal-content animate">
          <img src="<%=logo%> " style="width:60%; height:60% ">
                <h1><%=name%></h1>
          <p style="padding:10px"><b>Description:</b> <%=des%>  </p>
                    <img src="images/icon-1.png" style="width:30%; height:30% ">                   
                    <img src="images/icon-2.png" style="width:30%; height:30% ">
                    <img src="images/icon-3.png" style="width:30%; height:30% ">
                    <br/>
                    <img src="images/icon-4.png" style="width:30%; height:30% ">
                    <img src="images/icon-5.png" style="width:30%; height:30% ">
                    <img src="images/icon-6.png" style="width:30%; height:30% ">
                    <br/>
                    <img src="images/icon-7.png" style="width:30%; height:30% ">
          
      </div></div>
      
      <script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
/*
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
*/
function overview(event){
	document.getElementById('id01').style.display='block';
	
	   if (event.target == modal) {
	        modal.style.display = "none";
	    }
}
</script>
</div>
      
      
    </div>
  </div>

 <% } %>


 <%}

catch (Exception e) {
e.printStackTrace();
} %>

  </div>
  
 </div>
 
  </div>



</div></div></div></div>

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



</div><!--wrapper div-->

 <%}
catch (Exception e) {
e.printStackTrace();
} %>
</body>
</html>