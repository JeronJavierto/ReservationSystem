<?php
  include('DBConnector.php');
?>
<!DOCTYPE html>
<html>
<head>
  <title>Events</title>
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
    <li class="req"><a href="../pages/admin/list_of_requests.php" class="req">REQUEST</a></li>
    <li class="rep"><a href="../pages/admin/report.php" class="rep">REPORTS</a></li>
  </ul>

  <table id="customers">
    <tr>
      <th>Event Name</th>
      <th>Faciltiy</th>
      <th>Date</th>
      <th>Time Start</th>
      <th>Time End</th>
      <th>Description</th>
    </tr>

<?php

  $sql = "SELECT * FROM event";
  $result = $conn-> query($sql);

  if ($result-> num_rows > 0){
    while ($row = $result-> fetch_assoc()){
      echo "<tr>
          <td>" . $row["Event_name"] . "</td>
          <td>" . $row["Facility"] . "</td>
          <td>" . $row["Date"] . "</td>
          <td>"  . $row["Time_start"] . "</td>
          <td>" . $row["Time_end"] . "</td>
          <td>"  . $row["Description"] . "</td>
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