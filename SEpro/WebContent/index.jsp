<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>

	  	<link rel="stylesheet"  href="css/LoginStyle.css" type="text/css" >

</head>
<body>



<!-- ******************** Login Form ******************** -->


 

 <div class="containerLogin">
<div class="Login">
<div style="text-align:center; margin-top:100px">
<button  onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><span style="font-size:17px; font-weight:bold; cursor:pointer; ">Sign In</span></button>
</div>
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="loginCheck.jsp" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>



      <h1>Sign In</h1>
    
      <!--<label for="uname"><b>Username</b></label> -->
      <input type="text" placeholder="Enter Username" name="Name" required>

      <!--<label for="psw"><b>Password</b></label>-->
      <input type="password" placeholder="Enter Password" name="Password" required>
        
      <button type="submit" style="font-size:17px;">Sign In</button>
      <label style="margin-left:13px; margin-bottom:6px;">
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>

    <div class="containerLogin" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
  </div>
  </div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</div>
<!--  ******************** Login Form ends ******************** -->

</body>
</html>