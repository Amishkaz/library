<?php
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

$sql = "SELECT bookId, bookName, bookAuthor , bookCatergory , availability FROM books";
$result = $conn->query($sql);

$data = array();

// Iterate through the results and store the data in an array
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}else {
  echo "0 results";
}

// Close the connection


// Encode the data as JSON
echo json_encode($data);

$conn->close();
?>