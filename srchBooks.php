<?php
$srchinput=$_GET['srchinput'];
//$d="afsdfdsf";
$servername = "13.233.96.214";
$username = "admn";
$password = "Asdf@1234";
$dbname = "library";

$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT bookName,bookAuthor,bookCatergory,availability FROM books WHERE bookName like '%{$srchinput}%' OR bookAuthor like '%{$srchinput}%' OR bookCatergory like '%{$srchinput}%' ";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    echo "<table  table-layout: auto; class='styled-table'>
    <tr>
        <th class='shrink'>
            Name
        </th>
        <th class='shrink'>
            Author
        </th>
        <th class='shrink'>
            Catergory
        </th>
        <th class='shrink'>
            availability
        </th>
    </tr>";
    while($row = mysqli_fetch_assoc($result)) {
        echo "<tr><td class='shrink'>".$row["bookName"]."</td><td>".$row["bookAuthor"]."</td><td>".$row["bookCatergory"]."</td><td>".$row["availability"]."</td></tr>";
    }
    echo "</table>";
} else {
    
    echo "<h2 id='title'>No books Found</h2>";
}


mysqli_close($conn);
?>