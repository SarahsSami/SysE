 
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	

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
                        <li><a style="font-size:30px; color:#52678c"><bm>System Engineering &nbsp; &nbsp;|</b></a>  </li>
            
                <li><a href="indexSE.jsp">Home</a></li>
               <li><a href="Tutorial.jsp" >Tutorial</a></li>
                
              <li>      <% if(resultSet.getString("position").equals("pm")) { %>
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
			
<!--view projects example -->
<div class="main1" style="    text-align:center; margin-left:100px; margin-top:70px">



<div id="box">
    <img style="width:250px" src="images/1.png"/>   

<h2>Phase 1</h2>
<br/>
<p>King Abdulaziz City for Science and Technology (KACST) is a scientific government institution that supports
 and enhances scientific applied research. It coordinates the activities of government institutions and scientific
  research centers in accordance with the requirements of the development of the Kingdom.</p>
</div>





 <form action="FileUploadHandler" enctype="multipart/form-data" method="post">
<div  class="button-tu" style=" margin-right:90px;">

<input id="upload" type="file" name="file2" /><br>
<input type="submit" value="upload" />
<button > <a href="DownloadServlet" > Download</a> </button>
<input type="button" id="approve" value="Approve"  />

 </form> 
</div>


<!-- 
  <input type="button" id="upload" value="Upload"/>
 <input type="button" id="download" value="Download"/> -->



 
<script type="text/javascript">

$(document).ready(function(){
	
	$("#approve").click(function(){
		$("#download").prop("disabled",true);
		$("#download").css("cursor","not-allowed")
		$("#upload").prop("disabled",true);
		$("#upload").css("cursor","not-allowed")
		$("#approve").prop("disabled",true);
		$("#approve").css("cursor","not-allowed")
	})
})
</script>  
</div> 

</div>
</div>
</div>
 
 
  

 

</div></div></div>
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