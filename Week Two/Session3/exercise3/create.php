<html>
<head>
<title>create</title>
</head>
<body>

<?php
$servername ="localhost";
$username = "root";
$password  = "";
$dbname ="phpmyadmin";
$conn = new mysqli($servername, $username, $password, $dbname);

$customerID = $_POST['customerID'];
$cust_name = $_POST['cust_name'];
$address_line1 = $_POST['address_line1'];
$tomn = $_POST['tomn'];
$country = $_POST['country'];
$Tel = $_POST['Tel'];

$sql = " INSERT INTO customers (customerID,cust_name,address_line1,town,country,Tel) VALUE('$customerID','$cust_name','$address_line1','$tomn','$country','$Tel')";

if ($conn->query($sql) ===TRUE) {
   echo"New record created successfully";
}
 else{
echo "Error:".$sql."<br>".$conn->error;
 }
 $conn->close();
?>

</body>
</html>