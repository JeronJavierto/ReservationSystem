<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../stylesheet/style5.css">
<link rel="stylesheet" href="../stylesheet/style.css">   
	<title>List of Facilities</title>
	<h1>FACILITY RESERVATION SYSTEM</h1>
	
	<h3><a href="logout.php" class="signup">Log Out</a></h3>
</head>
    <body>
    
<ul class="menu">
	    <li class="home"><a href="../pages/client/home_client.php" class="home">HOME</a></li>
	    <li class="events"><a href="event_page_client.php" class="events">EVENTS</a></li>
	    <li class="faci"><a href="list_facilities_client.php" class="faci">FACILITIES</a></li>
        <li class="repo"><a href="../../php/Report.php" class="repo">REPORT</a></li>
  </ul>
        
    <div class="abc">Reports</div>
        <div class="bcd">
            <div class="cde">Incident Report</div>
        <br>
<form>
    <label for="Org">Date of Occurence</label>
    <input type="fill" id="Occur" name="date/occur" placeholder="....">
    <br>
    <label for="Vent">Time of Occurence</label>
    <input type="fill" id="" time/occur="Evnt" placeholder="... ">
    <br>
    <h4>Causet of Incident</h4>
    <label for="Ven">Name</label>
    <input type="fill" id="n" name="nm" placeholder=".....">
    <br>
    <label for="Dat">ID no.</label>
    <input type="fill" id="no" name="idno" placeholder="...... ">
    <br>
    <label for="Tim">Course</label>
    <input type="fill" id="cr" name="course" placeholder=".....">
    <br>
    <h4>Description</h4>
    <textarea rows="4" cols="50" name="comment">
</textarea>
    <h4>Extent of Damage</h4>
    <textarea rows="4" cols="50" name="comment">
</textarea>
    <h4>Action Taken</h4>
    <textarea rows="4" cols="50" name="comment">
</textarea>
    <br>
    <br>
 
    <button class="butt">Acknowledge</button>
        
</form>

      </div>  
    </body>
</html>