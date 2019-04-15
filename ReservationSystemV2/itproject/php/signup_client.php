<?php
	include('DBConnector.php');

	$Fname = mysqli_real_escape_string($conn, $_REQUEST['FName']);
	$Lname = mysqli_real_escape_string($conn, $_REQUEST['LName']);
	$email = mysqli_real_escape_string($conn, $_REQUEST['email']);
	$org = mysqli_real_escape_string($conn, $_REQUEST['organization']);
	$pos = mysqli_real_escape_string($conn, $_REQUEST['position']);
	$password = mysqli_real_escape_string($conn, $_REQUEST['Password']);
	$ConPassword = mysqli_real_escape_string($conn, $_REQUEST['ConPassword']);

	$insertQuery = "INSERT INTO client (First_name, Last_name, email, Organization, position, password) VALUES ('$Fname', '$Lname', '$email', '$org', '$pos', '$password')";
	

	$email2= "SELECT * FROM client where email = '".$_POST['email']."'";
	$message = "Email already taken";

	if($result=mysqli_query($conn,$email2)){

	if(mysqli_num_rows($result)>0){

	echo "<script type='text/javascript'>alert('$message');</script>";

	}elseif (mysqli_query($conn, $insertQuery)) {
		header("location: ../pages/admin/home_admin.php");
		# code...
	}

	}
		
?>

<!-- }else if ($password == $ConPassword) {
			header("location: ../pages/admin/home_admin.php");
			// echo(password_hash($password, PASSWORD_BCRYPT));
			
			// include("../")
			if (mysqli_query($conn, $insertQuery)) {
				# code...			
			}else{
				echo (mysqli_connect_error());
			}
		}else{
			echo("Password didn't matched");
		} -->