<?php
$mail=$_GET['mail'];
$pass=$_GET['pass'];
//$d="afsdfdsf";
$servername = "172.17.0.2";
$username = "admn";
$password = "Asdf@1234";
$dbname = "library";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT userName, email, userPassword FROM logindetails WHERE email like '{$mail}';";

$stmt = $conn->prepare($sql);

$stmt->execute();
$stmt->store_result();
$stmt->bind_result($uname, $email, $passWd);
$stmt->fetch();
$stmt->close();

if($mail == $email && $pass == $passWd){
    echo "Welcome ".$uname;
    setcookie("username", $uname , time() + 3600);

    setcookie("email", $email , time() + 3600);


}else{
    echo "<h1 style='color:red;'> Invalid username <br> or password";
}

$conn->close();
?>