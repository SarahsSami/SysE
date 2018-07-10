<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<head>
<link rel="stylesheet"  href= "Style.css" type="text/css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<% 
/////////////////

String n=request.getParameter("Name");
		String p=request.getParameter("Password");
		
		//if(LoginDao.validate(n, p)){
          //      HttpSession session = request.getSession();
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/marketing","root","");
	
                        PreparedStatement ps=con.prepareStatement("select * from users where Name=? and Password=?");
                        ps.setString(1,n);
                        ps.setString(2,p);
	
                        ResultSet rs=ps.executeQuery();
                        if(rs.next())
                        {
                       
                      //String usertype= rs.getString("UserType");
                      //String userName=  rs.getString("Name");
                     session.setAttribute("id",rs.getString("ID"));
                     session.setAttribute("UserType",rs.getString("UserType"));
                     session.setAttribute("name",rs.getString("Name"));
                        response.sendRedirect("Profile.jsp");
                        
                        ///////
                        }
	else{%>
		<h4 style="margin-top: 270px; color:red; text-align:center;">" Incorrect username or password! " </h4><jsp:include page="index.jsp"/>
		
	<%}
                        
                        }catch(Exception e){System.out.println(e);}
                        %>
	

</body>
</html>