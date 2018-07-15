<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>SE | Create project</title>
</head>
<body>

<form action="creServlet" method="post"> 
  Project name:<br>
  <input type="text" name="pname" required="required">
  <br>
  Project logo:<br>
  <input type="file" name="pic" required="required"> <br><br>
  Project description:<br>
  <textarea name="pdesc" style="width:350px; height:200px" required="required">
</textarea><br><br>
 Project resources:

    

  <input type="submit" value="Create">
</form> 



</body>
</html>