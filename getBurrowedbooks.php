<?php
$servername = "database";
$username = "admn";
$password = "Asdf@1234";
$dbname = "library";
$email=$_GET['email'];
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT burrowbook.BurrowId, books.bookId, books.bookName, burrowbook.burrowDate, burrowbook.email FROM burrowbook INNER JOIN books on burrowbook.bookId=books.bookID AND burrowbook.email='{$email}' AND burrowbook.returnStatus='n';";
$result = $conn->query($sql);

$data = array();

// Iterate through the results and store the data in an array
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}else {
  $data='No results';
}

// Close the connection


// Encode the data as JSON
echo json_encode($data);

$conn->close();
?>