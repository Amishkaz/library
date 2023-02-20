<?php
$id=$_GET['id'];
$email=$_GET['email'];
$retdate=$_GET['retdate'];
//$d="afsdfdsf";
$servername = "15.206.74.187";
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
$sql = "INSERT INTO burrowbook (bookId , email, burrowDate, returnDate	,returnStatus) VALUES ('{$id}', '{$email}','{$today}','{$retdate}','n')";
$sql2 = "UPDATE books set availability = 'n' where bookID = '{$id}'";

if ($conn->query($sql) === TRUE and $conn->query($sql2) == TRUE) {
  echo "Book Borrowed";
} else {
  
  if( $conn->errno === 1062){
    echo "<h1 style='color:red;'>Book not available<br> used";
  }else{
  echo "Error: " . $sql . "<br>" . $conn->errno;
} 
}

$conn->close();
?>