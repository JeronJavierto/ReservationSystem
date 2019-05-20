<?php
	include('DBConnector.php');
	include('session.php');
?>

<!DOCTYPE html>
<html>
<head>
	<title>List of Facilities</title>
	<link rel="stylesheet" type="text/css" href="../stylesheet/style.css">
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<h1>FACILITY RESERVATION SYSTEM</h1>
	<h3><a href="logout.php" class="signup">Log Out</a></h3>
</head>
<body>    
  
	<ul class="menu">
	  <li class="home"><a href="../pages/admin/home_admin.php" class="home">HOME</a></li>
	  <li class="events"><a href="event_page_admin.php" class="events">EVENTS</a></li>
	  <li class="faci"><a href="list_facilities_admin.php" class="faci">FACILITIES</a></li>
	  <li class="reser"><a href="../pages/admin/list_of_reservations.php" class="reser">RESERVATION</a></li>
	  <li class="req"><a href="../pages/admin/list_of_requests.php" class="req">REQUEST</a></li>
	  <li class="rep"><a href="../pages/admin/report.php" class="rep">REPORTS</a></li>
	</ul>

	<table id="customers">
		<tr>
			<th>Level</th>
			<th>Room</th>
			<th>Room Type</th>
			<th>Description</th>
			<th>Capacity</th>
			<th>Reservation</th>
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

	<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;" class="room_mtrx">Room Matrix</button>
 
 <div id="id01" class="room_matrix">
 <form class="modal-content animate" action="php/room_matrix_test.php" method= "POST">
 	<div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close_signin" title="Close Modal">&times;</span>
    </div>
    <p class="prm">Room Matrix</p>
    
<ul class="drpdwn_name">
	<li class="room_rm">Room</li>
	<li class="sy_rm">School Year</li>
	<li class="ss_rm">School Semester</li>
</ul>

<ul class="drpdwn_name">
	<br>
	<li class="room_rm-drpdwn">
  		<select name="rooms" class="">
   			<option value="">Select Room</option>
    		<option value="">1</option>
    		<option value="">2</option>
    		<option value="">3</option>
  		</select>
	</li>

	<li class="sy_rm-drpdwn">
		<select name="rooms" class="">
    		<option value="">Select Room</option>
    		<option value="">1</option>
    		<option value="">2</option>
    		<option value="">3</option>
  		</select>
	</li>
	<li class="ss_rm-drpdwn">
		<select name="rooms" class="">
    		<option value="">Select Room</option>
    		<option value="">1</option>
    		<option value="">2</option>
    		<option value="">3</option>
  		</select>
	</li>
</ul>

<table id="customers">
	<tr>
			<th>Time</th>
			<th>Monday</th>
			<th>Tuesday</th>
			<th>Wednesday</th>
			<th>Thursday</th>
			<th>Friday</th>
			<th>Saturday</th>
		</tr>
</table>

</body>
</html>