<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../stylesheet/style5.css">
<link rel="stylesheet" href="../../stylesheet/style.css">
<h1>FACILITY RESERVATION SYSTEM</h1>
<h3><a href="edit_profile.html" class="signup">Edit Profile</a></h3><br>
<h3><a href="../../php/logout.php" class="signup">Log Out</a></h3>
</head>
    <body>
<ul class="menu">
		<li class="home"><a href="home_client.html" class="home">HOME</a></li>
		<li class="events"><a href="../../php/event_page.php" class="events">EVENTS</a></li>
		<li class="faci"><a href="../../php/list_facilities.php" class="faci">FACILITIES</a></li>
        <li class="repo"><a href="../../php/Report.php" class="repo">REPORT</a></li>
</ul>
    <div class="abc">Reports</div>
        <div class="bcd">
            <div class="cde">Incident Report</div>
        <br>
<form action="report_client.php" method="GET">
    <label for="Org">Date of Occurence</label>
    <input type="date" name="date" placeholder="....">
    <br>
    <label for="Vent">Time of Occurence</label>
    <input type="time" name="time" placeholder="... ">
    <br>
    <h4>Causet of Incident</h4>
    <label for="Ven">Name</label>
    <input type="text" id="n" name="name" placeholder=".....">
    <br>
    <label for="Dat">ID no.</label>
    <input type="text" id="no" name="idno" placeholder="...... ">
    <br>
    <label for="Tim">Course</label>
    <input type="text" id="cr" name="course" placeholder=".....">
    <br>
    <h4>Description</h4>
    <textarea rows="4" cols="50" name="description">
</textarea>
    <h4>Extent of Damage</h4>
    <textarea rows="4" cols="50" name="damage">
</textarea>
    <h4>Action Taken</h4>
    <textarea rows="4" cols="50" name="actaken">
</textarea>
    <br>
    <br>
 
    <button class="butt">Acknowledge</button>
        
</form>

      </div>  
    </body>
</html>