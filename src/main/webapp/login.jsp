<!DOCTYPE html> 
<html>
<head>
    <title>ONLINE EXAMINATION</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;
background-image: url(background.jpeg);
background-size: cover;
background-repeat: no-repeat;
}

.right{
  position: absolute;
  top: 38px;
  right: 16px;
  font-size: 18px;
}

.right1{
  position: absolute;
  top: 38px;
  right: 140px;
  font-size: 18px;
}

img { 
  width: 100%;
  height: auto;
  opacity: 0.2;
}

h2{
    
    /* display: inline-block;
   width: 100px;
  height: 100px; 
  padding: 5px; */
  /* border: 1px solid blue;    
  background-color: yellow;  */ 
    /* display: inline-block;
  /* width: 100px;
  height: 100px;
  padding: 5px; */
  /* border: 1px solid blue;    
  background-color: yellow;   */ 
    margin-left: auto;
    margin-right: auto;
    width: 8em;
    position: absolute; 
    top: 50%;
  width: 100%;
  text-align: center; 
  font-size: 18px;  
}
/* h1{
    top: 20%;
  width: 100%;
  text-align: center;
  font-size: 30px;

} */

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}
h1.new{
  /* width: 206px;    
                border: 2px solid black;   
                word-break: keep-all;    
                text-align: center;   
                font-size: 45px;   */
    color: rgb(199, 55, 88);  
    width: 206px;    
    top:300px;
   font-family: "Helvetica Neue",Arial,sans-serif;
  padding: 300px 0;
  width: 100%;
  text-align: center;
  font-size: 45px; 

}
h2.new{
  
    color: rgb(199, 55, 88);     
     border: 2px solid black;
   	font-family: "Helvetica Neue",Arial,sans-serif;
  	padding: 200px 0;
  	width: 100%;
  	text-align: center;
  	font-size: 25px; 

}
/* img.avatar {
  width: 40%;
  border-radius: 50%;
} */

.container {
  padding: 10px;
}

span.psw {
  float: right;
  padding-top: 8px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 7px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 2% auto 5% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 40%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}
.close1{
 
  position: absolute;
  right: 100px;
  top: 50px;
  font-size: 40px;
  font-weight: bold;
  color: #161313;
}


</style>
</head>
<body >


<% response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%>
  <!-- <img src="img/78951176.jpg" alt="Cinque Terre" width="1000" height="300" > -->
    <h1 class="new" > 
 		Online quiz
    <% 
    	if(request.getParameter("registerationStatus")==null)
    	{}
    	else
    	{out.println("("+request.getParameter("registerationStatus")+")");}
    
    %>
    
    </h1>
    
    <!-- <img src="img/78951176.jpg" alt="Cinque Terre" width="1000" height="300" > -->
     
	
<button class="right" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
<button class="right1" onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Sign Up</button>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="Main" method="get">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <!-- <img src="img_avatar2.png" alt="Avatar" class="avatar"> -->
    </div>

    <div class="container">
		<input type="hidden" name="action" value="studentlogin" ><br>
      <label for="uname"><b>Username/email</b></label>
      <input type="text" placeholder="Enter Username" name="username" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
        
      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
<div id="id02" class="modal">
  <span onclick="document.getElementById('id02').style.display='none'" class="close1" title="Close Modal">&times;</span>
  <form class="modal-content" action="Main" method="get">
    <div class="container">
      <h3>Sign Up</h3>
      
      <p >Please fill in this form to create an account.</p>
      <hr>
	  <input type="hidden" name="action" value="studentsignup"><br>
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="email" required>
	  
	  <label for="name"><b>Name</b></label>
      <input type="text" placeholder="Enter Name" name="name" required>
		
      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>

      <label for="psw-repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="repassword" required>
      
      <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
      </label>

      <p>By creating an account you agree to our <a href="#" style="color:dodgerblue"> Terms & Privacy</a>.</p>

      <div class="clearfix">
        <button type="submit" class="signupbtn">Sign Up</button>
      </div>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal1 = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event1) {
  if (event1.target == modal1) {
    modal1.style.display = "none";
  }
}
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>