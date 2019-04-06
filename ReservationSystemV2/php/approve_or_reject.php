<?php
	include('DBConnector.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Approve or Reject</title>
</head>
<body>
	<table>
		<tr>
			<th>Reservation ID</th>
			<th>Client ID</th>
			<th>Activity</th>
			<th>Decision</th>			
		</tr>
<?php
	
	$sql = "SELECT * FROM Reservation r LEFT JOIN client c ON r.Client_ID = c.ClientID";
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