<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>SE | Project Resources</title>
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







<form action="addresServlet" method="post"> 





<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from project") ;
%> 
 <select name="projects">  
      <%
      
      resultset.first();%>
      
   
      <option> <%= resultset.getString(2) %></option>
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





<table>



 Project resources:
<br>


     
<%

int[] array =new int[10];
for(int i=0;i<10;i++){
if(i==0){
%>
<tr>
System engineer:



<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'SE'") ;
%> 


      <select name="SE">  
      <%
      
      resultset.first();%>
      
   
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
Customer:   


<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'customer'") ;
%> 


      <select name="cus">  
      <%
      
      resultset.first();%>
      
    
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
Configuration manager:




<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'cm'") ;
%> 


      <select name="cm">  
      <%
      
      resultset.first();%>
      
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
Product manager:



<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'productM'") ;
%> 


      <select name="productM">  
      <%
      
      resultset.first();%>
      
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
Program manager:



<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'programM'") ;
%> 


      <select name="programM">  
      <%
      
      resultset.first();%>
      
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
System tester:




<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'tester'") ;
%> 


      <select name="tester">  
      <%
      
      resultset.first();%>
      
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
System designer:



<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'designer'") ;
%> 


      <select name="designer">  
      <%
      
      resultset.first();%>
      
    
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
System quality manager:




<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'quality'") ;
%> 


      <select name="quality">  
      <%
      
      resultset.first();%>
      
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
System implementer:




<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'imp'") ;
%> 


      <select name="imp">  
      <%
      
      resultset.first();%>
      
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
Technical leader:





<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
       resultset =statement.executeQuery("select * from users where position = 'Tleader'") ;
%> 


      <select name="leader">  
      <%
      
      resultset.first();%>
      
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
<br></br>






<br>

</tr>
<br>

<br></br>

    


</table>

<%}}
catch (Exception e) {
e.printStackTrace();
} %>

  <input type="submit" value="Submit">
</form> 



</body>
</html>

