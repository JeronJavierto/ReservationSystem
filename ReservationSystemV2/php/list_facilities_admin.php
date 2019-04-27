<?php
	include('DBConnector.php');
	include('session.php');
?>

<!DOCTYPE html>
<html>
<head>
	<title>List of Facilities</title>
	<link rel="stylesheet" href="../stylesheet/style.css">
	<h1>FACILITY RESERVATION SYSTEM</h1>
	<h3><a href="edit_profile.php" class="signup">Edit Profile</a></h3><br>
	<h3><a href="logout.php" class="signup">Log Out</a></h3>
</head>
<body>    
  
	<ul class="menu">
	  <li class="home"><a href="../pages/admin/home_admin.php" class="home">HOME</a></li>
	  <li class="events"><a href="event_page_admin.php" class="events">EVENTS</a></li>
	  <li class="faci"><a href="list_facilities_admin.php" class="faci">FACILITIES</a></li>
	  <li class="reser"><a href="../pages/admin/list_of_reservations.php" class="reser">RESERVATION</a></li>
	  <li class="req"><a href="list_of_requests_admin.php" class="req">REQUEST</a></li>
	  <li class="rep"><a href="../pages/admin/report.php" class="rep">REPORTS</a></li>
	</ul>

	 <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;" class="addfB">Add Facility</button>

	 <div id="id01" class="addfmodal">
  	 <form class="addfmodal-content animate" action="php/login.php" method="POST">
    <div class="imgcontainer1">
      <span onclick="document.getElementById('id01').style.display='none'" class="close_signin" title="Close Modal">&times;</span>
    </div>

      <p>Fill up the form to add a facility.</p>
      <hr>
      <label for="frstn">Level Name</label>
      <input type="text" placeholder="Enter Level Name" name="level" required>

      <label for="lstn">Room Name</label>
      <input type="text" placeholder="Enter Room Name" name="room">

      <label for="email">Room Type</label>
      <input type="text" placeholder="Enter Room Type" name="roomType" required>      

      <label for="org">Description</label>
      <input type="text" placeholder="Enter Description" name="description" required="">

      <label for="posi">Capacity</label>
      <input type="text" placeholder="Enter Capacity" name="capacity" required="">     

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn_login">Cancel</button> 
        <button type="submit" class="signupbtn">Submit</button>
      </div>
    </div>
  </form>
</div>

	<table id="lfadmin">
		<tr>
			<th>Level</th>
			<th>Room</th>
			<th>Room Type</th>
			<th>Description</th>
			<th>Capacity</th>
		</tr>
<?php
	$sql = "SELECT * FROM facility";
	$result = $conn-> query($sql);

	if ($result-> num_rows > 0){
		while ($row = $result-> fetch_assoc()){
			echo "<tr>
					<td>" . $row["Level"] . "</td>
					<td>" . $row["room"] . "</td>
					<td>" . $row["roomType"] . "</td>
					<td>"  . $row["description"] . "</td>
					<td>" . $row["capacity"] . "</td>
				  </tr>";
		}
		echo "</table>";
	}else{
		echo "0 result";
	}

	$conn-> close();
?>		
	</table>
</body>
</html>