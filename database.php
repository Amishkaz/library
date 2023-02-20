<?php
$uname=$_GET['uname'];
$mail=$_GET['mail'];
$pass=$_GET['pass'];
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

$sql = "INSERT INTO logindetails (userName,email,userPassword) VALUES ('{$uname}', '{$mail}','{$pass}')";

try{
  
  $conn->query($sql);
  echo "Welcome";

} catch (mysqli_sql_exception $e) {
  if ($e->getCode() == 1062) {
    echo "<h1 style='color:red;'>Email already<br> used";
  }else {
      throw $e;
      
  }
}
$conn->close();
?>