<?php
	include('DBConnector.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Approve or Reject</title>
	<link rel="stylesheet" href="../stylesheet/style.css">
	<h1>FACILITY RESERVATION SYSTEM</h1>
</head>
<body>

	<ul class="menu">
		<li class="home"><a href="home.html" class="home">HOME</a></li>
		<li class="events"><a href="events.html" class="events">EVENTS</a></li>
		<li class="faci"><a href="facilities.html" class="faci">FACILITIES</a></li>
		<li class="reser"><a href="reservation.html" class="reser">RESERVATION</a></li>
		<li class="req"><a href="request.html" class="req">REQUEST</a></li>
		<li class="rep"><a href="reports.html" class="rep">REPORTS</a></li>
	</ul>

	<table id="customers">
		<tr>
			<th>Reservation ID</th>
			<th>Client ID</th>
			<th>Activity</th>
			<th>Decision</th>			
		</tr>
<?php
	
	$sql = "SELECT * FROM reservation r LEFT JOIN client c ON r.resID = c.ClientID";
	// $sql = "SELECT * FROM client";

	$result = $conn-> query($sql);

	if ($result-> num_rows > 0){
		while ($row = $result-> fetch_assoc()){
			echo "<tr>
					<td>" . $row["resID"] . "</td>
					<td>" . $row["ClientID"] . "</td>
					<td>" . $row["Event"] . "</td>								
				  </tr>";
		}
		echo "</table>";
	}else{
		echo "Error: " . $sql . "<br>" . $conn->error;
	}

	$conn-> close();
?>

	</table>
</body>
</html>