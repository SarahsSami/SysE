<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%@ page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile</title>

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

	            <!--  Profile sec -->
	<div id="Profile" data-section="Profile"  >		
	<!-- 	<div class="container"> -->
			<div class="row">
		<!--  		<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate"> Profile</h2>
                                  		<div class="col-md-8 col-md-offset-2 subtext to-animate">
						</div>

				</div>-->
                                                                    <div class="col-md-12">
  <div id="fh5co-press" data-section="Services">
		<div class="container">
			<div class="row">
                            
                            
				<div class="col-md-12 section-heading text-center">
					<h2 class="single-animate animate-press-1">Services</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext single-animate animate-press-2">

						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<!-- Press Item 1 -->
					<div class="fh5co-press-item to-animate">
						<div class="fh5co-press-img" style="background-image: url(images/CRM.png) ">
						</div>
						<div class="fh5co-press-text">
							<h3 class="h2 fh5co-press-title">CRM<span class="fh5co-border"></span></h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis eius quos similique suscipit dolorem cumque vitae qui molestias illo accusantium...</p>
							<p><a href="#" class="btn btn-primary btn-sm">Open</a></p>
						</div>
					</div>
					<!-- Press Item -->
				</div>
<div class="col-md-6">
					<!-- Press Item 1 -->
					<div class="fh5co-press-item to-animate">
						<div class="fh5co-press-img" style="background-image: url(images/IB.png)">
						</div>
						<div class="fh5co-press-text">
							<h3 class="h2 fh5co-press-title">Ideas Bank<span class="fh5co-border"></span></h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis eius quos similique suscipit dolorem cumque vitae qui molestias illo accusantium...</p>
							<p><a href="ideabank1.jsp" class="btn btn-primary btn-sm">Open</a></p>
						</div>
					</div>
					<!-- Press Item -->
				</div>
                            
                            <!-- SE link -->
                            <div class="col-md-6">
					<!-- Press Item 1 -->
					<div class="fh5co-press-item to-animate">
						<div class="fh5co-press-img" style="background-image: url(images/SE.png)">
						</div>
						<div class="fh5co-press-text">
							<h3 class="h2 fh5co-press-title">SE<span class="fh5co-border"></span></h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis eius quos similique suscipit dolorem cumque vitae qui molestias illo accusantium...</p>
							<p><a href="indexSE.jsp" class="btn btn-primary btn-sm">Open</a></p>
						</div>
					</div>
					<!-- Press Item -->
				</div>
  <% if(!resultSet.getString("UserType").equals("spcust")) {
                    %>
				<div class="col-md-6">
					<!-- Press Item 2 -->
					<div class="fh5co-press-item to-animate">
						<div class="fh5co-press-img" style="background-image: url(images/KM.png)">
						</div>
						<div class="fh5co-press-text">
							<h3 class="h2 fh5co-press-title">KM<span class="fh5co-border"></span></h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis eius quos similique suscipit dolorem cumque vitae qui molestias illo accusantium...</p>
							<p><a href="#" class="btn btn-primary btn-sm">Open</a></p>
						</div>
					</div>
					<!-- Press Item -->
				</div>
				
				<div class="col-md-6">
					<!-- Press  Item  3 -->
					<div class="fh5co-press-item to-animate">
						<div class="fh5co-press-img" style="background-image: url(images/PLM.png);">
						</div>
						<div class="fh5co-press-text">
							<h3 class="h2 fh5co-press-title">PLM <span class="fh5co-border"></span></h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis eius quos similique suscipit dolorem cumque vitae qui molestias illo accusantium...</p>
							<p><a href="#" class="btn btn-primary btn-sm">Open</a></p>
						</div>
					</div>
					<!-- Press Item -->
				</div>

				<div class="col-md-6">
					<!-- Press  Item 4-->
					<div class="fh5co-press-item to-animate">
						<div class="fh5co-press-img" style="background-image: url(images/CDP1.png);">
						</div>
						<div class="fh5co-press-text">
							<h3 class="h2 fh5co-press-title">CDP<span class="fh5co-border"></span></h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis eius quos similique suscipit dolorem cumque vitae qui molestias illo accusantium...</p>
                                                        <%if(resultSet.getString("emp_type").equals("CDPO")){ %>
							<p><a href="cdpoUI.jsp" class="btn btn-primary btn-sm">Open</a></p>
                                                        <% } else if(resultSet.getString("emp_type").equals("Team Leader")) {%>
							<p><a href="teaml1.jsp" class="btn btn-primary btn-sm">Open</a></p>
<%} else if(resultSet.getString("emp_type").equals("Employee")) {%>
							<p><a href="comvision.jsp" class="btn btn-primary btn-sm">Open</a></p>
<%}%>

						</div>
					</div>
					<!-- Press Item -->
				</div>
	   <%	 }}
catch (Exception e) {
e.printStackTrace();
} %>
</body>
</html>