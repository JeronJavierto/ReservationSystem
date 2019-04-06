<?php
include('DBConnector.php');

$fname = mysqli_real_escape_string($conn, $_REQUEST['fname']);
$lname = mysqli_real_escape_string($conn, $_REQUEST['lname']);
$email = mysqli_real_escape_string($conn, $_REQUEST['email']);
$office = mysqli_real_escape_string($conn, $_REQUEST['office']);
$password = mysqli_real_escape_string($conn, $_REQUEST['psw']);

$insertQuery = "INSERT INTO admin (firstname, lastname, email, office, password) VALUES ('$fname', '$lname', '$email', '$office', '$password')";

if ($conn->query($insertQuery) === TRUE) {
	} else {
	    echo "Error: " . $insertQuery . "<br>" . $conn->error;
	}

	$conn->close();
?>