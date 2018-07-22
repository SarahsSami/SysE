 
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

	

	
	
	


	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
 

 
  
  
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	
	
	
	
	
	<!-- Animate.css -->
	
	<!-- Icomoon Icon Fonts-->
	
	<!-- Simple Line Icons -->
	
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	
	
	
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


	<link rel="stylesheet" href="css/arrow.css">




<body>
    
                    <%
    //to display the ideas from database to ideas bank 
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "marketing";
String userId = "root";
String password = "";
int phid1=0,phid2=0,phid3=0,phid4=0,phid5=0,phid6=0,phid7=0;
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null, resultSet2 = null , resultSet3 = null;
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

<!-- Phases buttons -->
   <div class="bb" style="margin-top:20px; margin-left:180px; ">
  <button onclick="myFunction1()" id="1" class="btn btn-success btn-arrow-right" style="text-align:center; width:auto">User requirement</button>
  <button onclick="myFunction2()"id="2" class="btn btn-success btn-arrow-right">System Requirement</button>
  <button onclick="myFunction3()" id="3" class="btn btn-success btn-arrow-right">Architectural design</button><br>
  <button onclick="myFunction4()" id="4" class="btn btn-primary btn-arrow-right">Implementation</button>
  <button onclick="myFunction5()" id="5" class="btn btn-defulte btn-arrow-right">Integration System</button>
  <button onclick="myFunction6()" id="6" class="btn btn-defulte btn-arrow-right">Testing</button>
  <button onclick="myFunction7()"id="7" class="btn btn-defulte btn-arrow-right">Deployment</button>
  </div>
<!-- End Phases buttons -->

<div class="main1" style=" text-align:center; margin-left:100px; margin-top:120px">
<div id="box" >

	<%	
	String  id= request.getParameter("id");
	String id2= "'"+id+"'";
	//int id = Integer.parseInteger(n);%>
<%
try {

connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();

String user1= ""+session.getAttribute("id");
String sql1 = "SELECT * FROM marketing.project where idp = "+id;
resultSet2 = statement.executeQuery(sql1);
resultSet2.next();

String name= "", des="", logo="";

logo = resultSet2.getString("proLogo");
name = resultSet2.getString("proName");
des=resultSet2.getString("proDes");
int pid = resultSet2.getInt(1);
%>
 
 <div class="img-wrap" ><img style="width:100%; height:100%;" src="<%=logo %>"/></div>
 <h2 style="font-size:30px; "><%=name %></h2><br>
 <div  class="img-wrapm" style="width:60%; height:60%; text-align:center"> 
 <div  id="img1"  style="display:none" >
 <h3 style="font-family: sans-serif; color:#737373; margin-left:70px">‣ User requirement Activity diagram:</h3>
 <img  src="images/Phase1.png" style=" border:2px solid #fff; width:140%; height:140%; margin-left:70px" />
 <div>
<%
String sql2 = "SELECT * FROM marketing.phase";
resultSet3 = statement.executeQuery(sql2);
resultSet3.next();
phid1= resultSet3.getInt(1);
%>

 <div class="Login"><a style="margin-left:320px" href="activities.jsp?id=<%=pid%>&phaseid=<%=phid1%>"><button style="text-align:center; width:auto">View activities</button></a></div>
</div>
 </div>
 <!-- *********** -->
 <div  id="img2"  style="display:none" >
 <h3 style="font-family: sans-serif; color:#737373; margin-left:70px">‣ System requirement Activity diagram:</h3>
 <img  src="images/Phase2.png" style=" border:2px solid #fff; width:140%; height:140%; margin-left:70px"/>
  <div>
  <% 
resultSet3.next();
phid2= resultSet3.getInt(1);
%>
 <div class="Login"><a style="margin-left:320px" href="activities.jsp?id=<%=pid%>&phaseid=<%=phid2%>"><button style="text-align:center; width:auto">View activities</button></a></div>
</div>
 </div> 
 <!-- *********** -->
 <div  id="img3"  style="display:none" >
 <h3 style="font-family: sans-serif; color:#737373; margin-left:70px">‣ Architectural design Activity diagram:</h3>
 <img  src="images/Phase3.png" style=" border:2px solid #fff; width:140%; height:140%; margin-left:70px" />
  <div>
  <% 
resultSet3.next();
phid3= resultSet3.getInt(1);
%>
 <div class="Login"><a style="margin-left:320px" href="activities.jsp?id=<%=pid%>&phaseid=<%=phid3%>"><button style="text-align:center; width:auto">View activities</button></a></div>
</div>
 </div> 
 <!-- *********** -->
 <div  id="img4"  style="display:none" >
 <h3 style="font-family: sans-serif; color:#737373; margin-left:70px">‣ Implementation Activity diagram:</h3>
 <img  src="images/Phase4.png" style=" border:2px solid #fff; width:140%; height:140%; margin-left:70px" />
  <div>
  <% 
resultSet3.next();
phid4= resultSet3.getInt(1);
%>
 <div class="Login"><a style="margin-left:320px" href="activities.jsp?id=<%=pid%>&phaseid=<%=phid4%>"><button style="text-align:center; width:auto">View activities</button></a></div>
</div>
 </div>
 <!-- *********** -->
 <div  id="img5"  style="display:none" >
 <h3 style="font-family: sans-serif; color:#737373; margin-left:70px">‣ Integration system Activity diagram:</h3>
 <img  src="images/Phase5.png" style=" border:2px solid #fff; width:140%; height:140%; margin-left:70px" />
  <div>
  <% 
resultSet3.next();
phid5= resultSet3.getInt(1);
%>
 <div class="Login"><a style="margin-left:320px" href="activities.jsp?id=<%=pid%>&phaseid=<%=phid5%>"><button style="text-align:center; width:auto">View activities</button></a></div>
</div>
 </div>
 <!-- *********** -->
 <div  id="img6"  style="display:none" >
 <h3 style="font-family: sans-serif; color:#737373; margin-left:70px">‣ Testing Activity diagram:</h3>
 <img  src="images/Phase6.png" style=" border:2px solid #fff; width:140%; height:140%; margin-left:70px" />
  <div>
  <% 
resultSet3.next();
phid6= resultSet3.getInt(1);
%>
 <div class="Login"><a style="margin-left:320px" href="activities.jsp?id=<%=pid%>&phaseid=<%=phid6%>"><button style="text-align:center; width:auto">View activities</button></a></div>
</div>
 </div>
 <!-- *********** -->
 <div  id="img7"  style="display:none" >
 <h3 style="font-family: sans-serif; color:#737373; margin-left:70px">‣ Deployment Activity diagram:</h3>
 <img  src="images/Phase7.png" style=" border:2px solid #fff; width:140%; height:140%; margin-left:70px" />
  <div>
  <% 
resultSet3.next();
phid7= resultSet3.getInt(1);
%>
 <div class="Login"><a style="margin-left:320px" href="activities.jsp?id=<%=pid%>&phaseid=<%=phid7%>"><button style="text-align:center; width:auto">View activities</button></a></div>
</div>
</div>  
</div> 



<script>
var x1 = document.getElementById("img1");
var x2 = document.getElementById("img2");
var x3 = document.getElementById("img3");
var x4 = document.getElementById("img4");
var x5 = document.getElementById("img5");
var x6 = document.getElementById("img6");
var x7 = document.getElementById("img7");

function myFunction1() {
    
    if (x1.style.display === "none") {
        x1.style.display = "block";
        x2.style.display = "none";
        x3.style.display = "none";
        x4.style.display = "none";
        x5.style.display = "none"; 
        x6.style.display = "none";
        x7.style.display = "none";
        
    } else {
        x1.style.display = "none";
        x2.style.display = "none";
        x3.style.display = "none";
        x4.style.display = "none";
        x5.style.display = "none";
        x6.style.display = "none";
        x7.style.display = "none";
    }
}


function myFunction2() {
    
    if (x2.style.display === "none") {
        x2.style.display = "block";
        x1.style.display = "none";
        x3.style.display = "none";
        x4.style.display = "none";
        x5.style.display = "none";
        x6.style.display = "none";
        x7.style.display = "none";
        
    } else {
        x1.style.display = "none";
        x2.style.display = "none";
        x3.style.display = "none";
        x4.style.display = "none";
        x5.style.display = "none";
        x6.style.display = "none";
        x7.style.display = "none";
    }
}

function myFunction3() {
    
    if (x3.style.display === "none") {
        x3.style.display = "block";
        x2.style.display = "none";
        x1.style.display = "none";
        x4.style.display = "none";
        x5.style.display = "none";
        x6.style.display = "none";
        x7.style.display = "none";
        
    } else {
        x1.style.display = "none";
        x2.style.display = "none";
        x3.style.display = "none";
        x4.style.display = "none";
        x5.style.display = "none";
        x6.style.display = "none";
        x7.style.display = "none";
    }
}
function myFunction4() {
    
    if (x4.style.display === "none") {
        x4.style.display = "block";
        x2.style.display = "none";
        x3.style.display = "none";
        x1.style.display = "none";
        x5.style.display = "none";
        x6.style.display = "none";
        x7.style.display = "none";
        
    } else {
        x1.style.display = "none";
        x2.style.display = "none";
        x3.style.display = "none";
        x4.style.display = "none";
        x5.style.display = "none";
        x6.style.display = "none";
        x7.style.display = "none";
    }
}
function myFunction5() {
    
    if (x5.style.display === "none") {
        x5.style.display = "block";
        x2.style.display = "none";
        x3.style.display = "none";
        x1.style.display = "none";
        x4.style.display = "none";
        x6.style.display = "none";
        x7.style.display = "none";
        
    } else {
        x1.style.display = "none";
        x2.style.display = "none";
        x3.style.display = "none";
        x4.style.display = "none";
        x5.style.display = "none";
        x6.style.display = "none";
        x7.style.display = "none";
    }
}
function myFunction6() {
    
    if (x6.style.display === "none") {
        x6.style.display = "block";
        x2.style.display = "none";
        x3.style.display = "none";
        x1.style.display = "none";
        x5.style.display = "none";
        x4.style.display = "none";
        x7.style.display = "none";
        
    } else {
        x1.style.display = "none";
        x2.style.display = "none";
        x3.style.display = "none";
        x4.style.display = "none";
        x5.style.display = "none";
        x6.style.display = "none";
        x7.style.display = "none";
    }
}
function myFunction7() {
    
    if (x7.style.display === "none") {
        x7.style.display = "block";
        x2.style.display = "none";
        x3.style.display = "none";
        x1.style.display = "none";
        x5.style.display = "none";
        x6.style.display = "none";
        x4.style.display = "none";
        
    } else {
        x1.style.display = "none";
        x2.style.display = "none";
        x3.style.display = "none";
        x4.style.display = "none";
        x5.style.display = "none";
        x6.style.display = "none";
        x7.style.display = "none";
    }
}
function selectChange(val) {
    //Set the value of action in action attribute of form element.
    //Submit the form
    if(val==="1")
    {
       //document.getElementById("PhaseId").style.visibility='visible';
              document.getElementById("img1").style.visibility='visible';

    }else if(val==="2")
    {
              document.getElementById("PhaseId").style.visibility='hidden';
              document.getElementById("img2").style.visibility='hidden'; 
    }else if(val==="3")
    {
              document.getElementById("PhaseId").style.visibility='hidden';
              document.getElementById("img3").style.visibility='hidden'; 
    }else if(val==="4")
	    {
              document.getElementById("PhaseId").style.visibility='hidden';
              document.getElementById("img4").style.visibility='hidden'; 
	    }else if(val==="5")
	    {
	          document.getElementById("PhaseId").style.visibility='hidden';
	          document.getElementById("img5").style.visibility='hidden'; 
	    
        }else if(val==="6")
        {
              document.getElementById("PhaseId").style.visibility='hidden';
              document.getElementById("img6").style.visibility='hidden'; 
        }else if(val==="7")
        {
              document.getElementById("PhaseId").style.visibility='hidden';
              document.getElementById("img7").style.visibility='hidden'; 
}
}
</script>
</div>  
</div> 

</div></div></div></div>


<%}

catch (Exception e) {
	e.printStackTrace();} %>
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
	e.printStackTrace();} %>
</body>
</html>