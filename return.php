<?php
$bkID=$_GET['bkID'];
$bID=$_GET['bID'];
//$d="afsdfdsf";
$servername = "13.233.96.214";
$username = "admn";
$password = "Asdf@1234";
$dbname = "library";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$today=date("Y-m-d");
$sql = "INSERT INTO returnbook (burrowId, returnDate) VALUES ('{$bID}','{$today}')";
$sql2 = "UPDATE books set availability = 'y' where bookId = '{$bkID}'";
$sql3 ="UPDATE burrowbook set returnStatus = 'y' where BurrowId  = '{$bID}'";

if ($conn->query($sql) === TRUE and $conn->query($sql2) == TRUE and $conn->query($sql3) == TRUE) {
  echo "Book Returned";
} else {
  
  echo "Error: " . $sql . "<br>" . $conn->errno;

}

$conn->close();
?>