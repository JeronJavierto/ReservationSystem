<?php

//insert.php

$connect = new PDO('mysql:host=localhost;dbname=itproject', 'root', '');

if(isset($_POST["title"]))
{
 $query = "
 INSERT INTO events 
 (Event_name, Time_start, Time_end) 
 VALUES (:title, :start_event, :end_event)
 ";
 $statement = $connect->prepare($query);
 $statement->execute(
  array(
   ':title'  => $_POST['Event'],
   ':start_event' => $_POST['start'],
   ':end_event' => $_POST['end']
  )
 );
}


?>