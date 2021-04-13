<html>
<head>
<title>read</title>
</head>

<body>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "phpmyadmin";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error){
    die("Connection failed: ". $conn->connect_error);
}

$sql = "SELECT * FROM customers";
$result = mysqli_query($conn, $sql);
if(mysqli_num_rows($result) > 0 ){
    echo "<table border='1' class='col-12'>
            <tr><th>customerID:</th><th>cust_name:</th><th>address_line1:</th><th>town</th><th>country</th><th>Tel</th><tr>";
            while($row = mysqli_fetch_assoc($result)){
            echo "<tr><td>".$row["customerID"]."</td><td>".$row["cust_name"]."</td><td>".$row["address_line1"]."</td><td>".$row["town"]."</td><td>".$row["country"]."</td><td>".$row["Tel"]."</td><td>
<a href='update.php?id=".$row['customerID']."'>Update</a>
<a href='delete.php?id=".$row['customerID']."&name=".$row['cust_name']."'>Delete</a>
            </td><tr>";
        }
    echo "</table>";
}

mysqli_close($conn);
?>

</body>

</html>