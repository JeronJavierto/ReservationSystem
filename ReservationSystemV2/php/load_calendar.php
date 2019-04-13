<?php

//load.php

$connect = new PDO('mysql:host=localhost;dbname=itproject', 'root', '');

$data = array();

$query = "SELECT * FROM events ORDER BY eventID";

$statement = $connect->prepare($query);

$statement->execute();

$result = $statement->fetchAll();

foreach($result as $row)
{
 $data[] = array(
  'id'   => $row["eventID"],
  'title'   => $row["Event_name"],
  'start'   => $row["Time_start"],
  'end'   => $row["Time_end"]
 );
}

echo json_encode($data);

?>

