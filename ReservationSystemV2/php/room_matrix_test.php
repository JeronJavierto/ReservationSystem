<?php
	include('DBConnector.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Room Matrix Test</title>
	<link rel="stylesheet" href="../stylesheet/style.css">
	<h1>FACILITY RESERVATION SYSTEM</h1>
</head>
<body>
	<table id="customers">
		<tr>
			<td> Room Name</td>
			<td> Days </td>
			<td> Time </td>
			<td> Hours </td>
		</tr>
<?php

	$sql = "SELECT * FROM classroom where roomName='D422'";
	$result = $conn-> query($sql);
	

	if ($result-> num_rows > 0){
		while ($row = $result-> fetch_assoc()){
			echo "<tr>
					<td>" . $row["roomName"] . "</td>
					<td>" . $row["days"] . "</td>
					<td>" . $row["time"] . "</td>
					<td>" . $row["hours"] . "</td>
				  </tr> <br/>";
		}
		echo "</table>";
	}else{
		echo "0 result";
	}

?>

<?php

	$sql = "SELECT roomName, time, days, SUM(hours*if(days='MWF', 3 , if(days='MTh', 2 ,if(days='TTH', 2 ,if(days='TF', 2 , 0 ))))) weekly from itproject.classroom where roomName ='D422'";

	$result = $conn-> query($sql);

	if ($result-> num_rows > 0){
		while ($row = $result-> fetch_assoc()){



			echo "Hours Utilized(Weekly): " . $row["weekly"] . " hours";
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