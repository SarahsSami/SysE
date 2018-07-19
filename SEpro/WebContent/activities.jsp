 
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
ResultSet resultSet = null , rs = null , rs2 = null, rst = null, rsAct=null;
String sqlAct="",sqlAct1="",sqlAct2="",sqlAct3="",sqlAct4="",sqlAct5="";
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



<% 
String actDes1="",actname1="", actrole1="",temp1="", Matrics1="", approval1="";
String  id= request.getParameter("phaseid");%>


<!-- Activity buttons -->
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

	   %>      	 
     <button onclick="FunctionAct(<%=act%>)" id="<%=act%>" value="<%=st%>" class="btn btn-success btn-arrow-right">Activity <%=act%>  </button>
 
 <script type="text/javascript">
 
 var status =document.getElementById("<%=st%>").value;
 var act = document.getElementById("<%=act%>");

	   if (status==="1"){
		act.style.background = "green";
		//act.style.border = "green";
		act.innerHTML = "Compelete";

	   }

	   else  if (status==="2"){
		act.style.background = "blue";
		act.innerHTML = "in Progress";
}
 else  if (status==="3" ){
		act.style.background = "grey";
		act.innerHTML = "incompelete";

		} 
 else { act.style.background = "black";}


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
} %> <!-- End Activity buttons   -->

<div class="main1" style="    text-align:center; margin-left:100px; margin-top:70px">


<div id="box">

<% 
String sql2 = "Select * from marketing.activity where phaseid = "+id;
 rs = statement.executeQuery(sql2);
 rs.next();
 String actname = rs.getString("actname");
 String actDes = rs.getString("actdesc");
 String actrole = rs.getString("actrole");
 String temp = rs.getString("template");
 String Metrics = rs.getString("metrics");
 String actapproval = rs.getString("actapproval");

 String n = "";

%>

<!-- Activity content -->
<div class="button-tu"><button style="width:auto;"><span style="font-size:13px; cursor:pointer; text-align:left">Change request</span></button></div> 

<h3 id="actname"></h3>

<div style=" display:flex; justify-content:center; text-align:center">
<button onclick="myFunction1()"  >Description</button>
<button onclick="myFunction2()">Role and Responsibilities</button>
<button onclick="myFunction3()">Templates</button>
<button onclick="myFunction4()">Metrics</button>
<button onclick="myFunction5()">Project Plan</button>
<button onclick="myFunction6()">Approval</button></div>

<div style=" display:flex; justify-content:left; text-align:left">

 <div id="des" style="display:none">
 <h3>Description</h3>
 <p id="actdesc1"></p>
 <p>look up</p>
 </div>
 <div id="Role" style="display:none">
 <h3>Role and Responsibilities</h3>
  <p id="role1"></p></div>
  <div id="Temp" style="display:none">
 <h3>Templates</h3>
  <p id="temp1"></p>
  <div class="button-tu"><button style="width:auto;"><span style="font-size:13px; cursor:pointer; float:right">Upload</span></button></div> 
 <div class="button-tu"><button style="width:auto;"><span style="font-size:13px; cursor:pointer; float:right">Download</span></button></div> 
 <div class="button-tu"><button style="width:auto;"><span style="font-size:13px; cursor:pointer; float:right">View</span></button></div> 
</div>
 <div id="Metrics" style="display:none">
 <h3>Metrics</h3>
 <p id="Metrics1"></p></div>
 <div id="plan" style="display:none">
 <h3>Project Plan</h3>
 <p id="Plan1"></p></div>
 <div id="approval" style="display:none">
 <h3>Approval</h3>
 <p id="Approval1"></p></div>

</div>
</div>
 <!-- End Activity content -->
<!-- Activity buttons retrieve js section -->
 
 <script>	  
var actname = document.getElementById("actname");
var actdesc = document.getElementById("actdesc1");
var actrole = document.getElementById("role1");
var temp = document.getElementById("temp1");
var Metrics = document.getElementById("Metrics1");
var Approval = document.getElementById("Approval1");

function ff(){
    alert("I am an alert box!");  
}
function FunctionAct(x){
	
	    if (x=="1"){
		   <% sqlAct1 = "Select * from marketing.activity where activityid ='1'AND phaseid ="+id;
		    rsAct = statement.executeQuery(sqlAct1);
		    rsAct.next();
		    actDes1 = rsAct.getString("actdesc");
		    actname1 = rsAct.getString("actname");
			actrole1 = rsAct.getString("actrole");
			temp1 = rsAct.getString("template");
			Matrics1 = rsAct.getString("metrics");
			approval1 = rsAct.getString("actapproval");
		    %>	 
		   alert("hi ftm");  
			actname.innerHTML = "<%=actname1%>";
			actdesc.innerHTML = "<%=actDes1%>";
			temp.innerHTML = "<%=temp1%>";
			Metrics.innerHTML = "<%=Matrics1%>";
			Approval.innerHTML = "<%=approval1%>";

		     } 
	      if (x=="2"){
					   alert("hi srh");  

		  		   <% sqlAct2 = "Select * from marketing.activity where activityid ='2' AND phaseid ="+id;
				    rsAct = statement.executeQuery(sqlAct2);
				    rsAct.next();
				    actDes1 = rsAct.getString("actdesc");
				    actname1 = rsAct.getString("actname");
					actrole1 = rsAct.getString("actrole");
					temp1 = rsAct.getString("template");
					Matrics1 = rsAct.getString("metrics");
					approval1 = rsAct.getString("actapproval");
				    %>	 
					actname.innerHTML = "<%=actname1%>";
					actdesc.innerHTML = "<%=actDes1%>";
					temp.innerHTML = "<%=temp1%>";
					Metrics.innerHTML = "<%=Matrics1%>";
					Approval.innerHTML = "<%=approval1%>";

		   			 }
	         else  if (x=="3"){
				   alert("hi three");  

	  		   <% sqlAct3 = "Select * from marketing.activity where activityid ='3'AND phaseid ="+id;
			    rsAct = statement.executeQuery(sqlAct2);
			    rsAct.next();
			    actDes1 = rsAct.getString("actdesc");
			    actname1 = rsAct.getString("actname");
				actrole1 = rsAct.getString("actrole");
				temp1 = rsAct.getString("template");
				Matrics1 = rsAct.getString("metrics");
				approval1 = rsAct.getString("actapproval");
			    %>	 
				actname.innerHTML = "<%=actname1%>";
				actdesc.innerHTML = "<%=actDes1%>";
				temp.innerHTML = "<%=temp1%>";
				Metrics.innerHTML = "<%=Matrics1%>";
				Approval.innerHTML = "<%=approval1%>";

	   			 } 
	         else      if (x=="4"){
				   alert("hi 4");  

	  		   <% sqlAct4 = "Select * from marketing.activity where activityid ='4'AND phaseid ="+id;
			    rsAct = statement.executeQuery(sqlAct2);
			    rsAct.next();
			    actDes1 = rsAct.getString("actdesc");
			    actname1 = rsAct.getString("actname");
				actrole1 = rsAct.getString("actrole");
				temp1 = rsAct.getString("template");
				Matrics1 = rsAct.getString("metrics");
				approval1 = rsAct.getString("actapproval");
			    %>	 
				actname.innerHTML = "<%=actname1%>";
				actdesc.innerHTML = "<%=actDes1%>";
				temp.innerHTML = "<%=temp1%>";
				Metrics.innerHTML = "<%=Matrics1%>";
				Approval.innerHTML = "<%=approval1%>";

	   			 } 
	         else  if (x=="5"){
				   alert("hi 5");  

	  		   <% sqlAct5 = "Select * from marketing.activity where activityid ='5'AND phaseid ="+id;
			    rsAct = statement.executeQuery(sqlAct2);
			    rsAct.next();
			    actDes1 = rsAct.getString("actdesc");
			    actname1 = rsAct.getString("actname");
				actrole1 = rsAct.getString("actrole");
				temp1 = rsAct.getString("template");
				Matrics1 = rsAct.getString("metrics");
				approval1 = rsAct.getString("actapproval");
			    %>	 
				actname.innerHTML = "<%=actname1%>";
				actdesc.innerHTML = "<%=actDes1%>";
				temp.innerHTML = "<%=temp1%>";
				Metrics.innerHTML = "<%=Matrics1%>";
				Approval.innerHTML = "<%=approval1%>";

	   			 } 
	         else  if (x=="6"){
				   alert("hi 6");  

	  		   <% sqlAct5 = "Select * from marketing.activity where activityid ='6'AND phaseid ="+id;
			    rsAct = statement.executeQuery(sqlAct2);
			    rsAct.next();
			    actDes1 = rsAct.getString("actdesc");
			    actname1 = rsAct.getString("actname");
				actrole1 = rsAct.getString("actrole");
				temp1 = rsAct.getString("template");
				Matrics1 = rsAct.getString("metrics");
				approval1 = rsAct.getString("actapproval");
			    %>	 
				actname.innerHTML = "<%=actname1%>";
				actdesc.innerHTML = "<%=actDes1%>";
				temp.innerHTML = "<%=temp1%>";
				Metrics.innerHTML = "<%=Matrics1%>";
				Approval.innerHTML = "<%=approval1%>";

	   			 } 
		   	   }</script>
		   	   <!-- Activity content buttons js section -->
<script> 
var x1 = document.getElementById("des");
var x2 = document.getElementById("Role");
var x3 = document.getElementById("Temp");
var x4 = document.getElementById("Metrics");
var x5 = document.getElementById("plan");
var x6 = document.getElementById("approval");

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
    </script>

 
  </div> 

 
</div>
</div>
</div>


</div>



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