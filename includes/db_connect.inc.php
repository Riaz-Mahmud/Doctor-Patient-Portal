<?php

$serverName = "localhost";
$userName = "root";
$password = "";
$dbName = "dipu_patiend";

$conn = mysqli_connect($serverName, $userName, $password, $dbName);

if(mysqli_connect_errno()){
  echo "Error: " . mysqli_connect_errno();
  die();
}

?>