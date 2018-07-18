 
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
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
 

 
  
  
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	
	
	
	
	
	<!-- Animate.css -->
	
	<!-- Icomoon Icon Fonts-->
	
	<!-- Simple Line Icons -->
	
	<!-- Owl Carousel -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

		<link rel="stylesheet" href="css/arrow.css">
	
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








</head>


<body  >
   
   
     
     
     
                      <%
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
ResultSet resultSet = null , rs = null , rs2 = null, rst = null;
int st=0;
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
     <a href="create.jsp">Create Project</a> <%}%></li>
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
<!-- Portfolio Gallery Grid -->
<div class="main1" style="    text-align:center; margin-left:100px; margin-top:70px">


<div id="box">
<% 

String  id= request.getParameter("phaseid");%>



<% 
String sql2 = "Select * from marketing.activity  where phaseid = "+id;
 rs = statement.executeQuery(sql2);
 rs.next();
 String n = "";
 
// int st = rs.getInt(3);
//n=st+"";

//while (rs.next()){
//	st = rs.getInt(3); 
//n=st+"  " + 1;}
%>


    <img style="width:250px" src="images/1.png"/>   


<h2 style="font-size:30px">King Abdulaziz City for Science and Technology</h2>

 <p style="padding:20px">King Abdulaziz City for Science and Technology (KACST) is a scientific government 
        institution that supports and enhances scientific applied research. It coordinates the activities of government
        institutions and scientific research centers in accordance with the requirements of the development of the
        Kingdom.</p>
        
              <div class="button-tu">
                  <button  style="width:auto;"><span style="font-size:13px; cursor:pointer; float:right">Change request</span></button>
      </div> 
        </div> 
    <%   

String sql3 = "Select * from marketing.phase  where phaseid = "+id;
 rs = statement.executeQuery(sql3);
 rs.next();

int num = rs.getInt(3);
     %> 
  
   <%  int act =1;
   for ( int i =0 ; i < num ; i++ ){
 String sql4 = "Select status from marketing.activity  where activityid = '"+ act +"'AND phaseid ="+id;
 rst = statement.executeQuery(sql4);
 rst.next();
 st = rst.getInt(1);
 //out.println(st);
	   %>      	 
     <button  id="<%=act%>" value="<%=st%>" class="btn btn-success btn-arrow-right">Activity <%=act%>  </button>
 
 <script type="text/javascript">
 
 var status =document.getElementById("<%=st%>").value;
 var act = document.getElementById("<%=act%>");

	   if (status==="1"){
		act.style.background = "green";
		//act.style.border = "green";

} if (status==="2"){
		act.style.background = "blue";
} if (status==="3"){
		act.style.background = "grey";
		}

	   

		
function myFunction(){
			/*
			alert("ddd");
	var status =document.getElementById("").value;
	 var act = document.getElementById("");

		   if (status==="1"){
			act.style.color = "blue";
	} else if (status==="0"){
			act.style.color = "yellow";
	} else if (status==="2"){
			act.style.color = "black";
			}*/
}
 </script>
   <%  act++;
} %>
 
</div>
</div>
</div>


<!-- style="background-color: black; border:black" -->

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