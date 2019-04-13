<!DOCTYPE html>
<html>
<head>
  <title>Home</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="stylesheet/style4.css">
  <h1>FACILITY RESERVATION SYSTEM</h1>
</head>

<body>
  <ul class="menu"> 
    <li class="home"><a href="index.html" class="home">HOME</a></li>
    <li class="events"><a href="php/event_page.php" class="events">EVENTS</a></li>
    <li class="faci"><a href="php/list_facilities.php" class="faci">FACILITIES</a></li>
  </ul>

  <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;" class="loginB">LOGIN</button>
  <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;" class="signupB">SIGN UP</button>

<?php include 'php/homepage_calendar.php' ;?>

<div id="id01" class="loginmodal">
  
  <form class="modal-content animate" action="php/login.php" method="POST">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>
    <div class="logincontainer">
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter Username" name="email" required="">

      <label for="password"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required="">
        
      <button type="submit">LOGIN</button>    
    </div>
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>    
    </div>
  </form>
</div>

<!-- MODAL SIGN UP FOR CLIENT -->
<div id="id02" class="modal">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>   
    
<form class="modal-content" action="php/signup_client.php" method="POST">
    <div class="container">
      <p>Please fill in this form to create an account.</p>
      <hr>
      <label for="frstn">First Name</label>
      <input type="text" placeholder="Enter First Name" name="FName" required>

      <label for="lstn">Last Name</label>
      <input type="text" placeholder="Enter Last Name" name="LName">

      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="email" required>      

      <label for="org">Organization</label>
      <input type="text" placeholder="Organization" name="organization" required="">

      <label for="posi">Position</label>
      <input type="text" placeholder="Position" name="position" required="">

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>

      <label for="psw-repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="ConPassword" required>
      
      <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
      </label>      

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Sign Up</button>
      </div>
    </div>
  </form>
</div>


<div id="id02" class="signupmodal">
  
  <form class="signupmodal-content animate" action="php/signup_modal.html" method="POST">
    <div class="imgcontainer">
    </div>

  <!-- Modal content -->
  <div class="modal1-content">
    <div class="modal1-header">
      <button type= "button" onclick="document.getElementById('id02').style.display='none'" class="close1">&times;</button>
      <p>Sign Up</p>
    </div>
    <div class="modal1-body">
    <div style = "position:absolute; left:35px; top:70px; class="container1" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="clientbtn">CLIENT</button>    
    </div>
    <div style = "position:absolute; right:35px; top:70px; class="container1" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="adminbtn">ADMIN</button>  
    </div>
  </form>
</div>

</body>
</html>