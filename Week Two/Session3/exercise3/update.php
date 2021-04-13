<html>
<head>
<title>update</title>
</head>
<body>


<?php
$servername ="localhost";
$username = "root";
$password  = "";
$dbname ="phpmyadmin";
$conn = new mysqli($servername, $username, $password, $dbname);

$sql =  "SELECT * FROM customers WHERE customerID = ".$_GET['id'];
$result = mysqli_query($conn, $sql);

if(mysqli_num_rows($result) > 0 ){
    while($row = mysqli_fetch_assoc($result)){
                  echo"<form action='update.php?id=" .$_GET['id']."' method = 'post'>
                    <lable>cust_name:</lable><input type = 'text' name='cust_name' value ='".$row['cust_name']."'><br>
                    <lable>address_line1:</lable><input type = 'text' name='address_line1' value ='".$row['address_line1']."'><br>
                    <lable>town:</lable><input type = 'text' name='town' value ='".$row['town']."'><br>
                    <lable>country:</lable><input type = 'text' name='country' value ='".$row['country']."'><br>
                    <lable>Tel:</lable><input type = 'text' name='Tel' value ='".$row['Tel']."'><br>
                    <input type = 'submit' name = 'submit'>
                    </form>";

    }
}
if ($_SERVER["REQUEST_METHOD"] == "POST"){
$sql = "UPDATE customers SET cust_name ='".$_POST['cust_name']."', address_line1 ='".$_POST['address_line1']."',town ='".$_POST['town']."',country ='".$_POST['country']."',Tel ='".$_POST['Tel']."' WHERE customerID = ".$_GET['id'];
if($conn->query($sql) === TRUE){
    echo"New record update successfully.<a href ='read.php'>click here</a>to navigate back to the main menu.";
 }
else {
     echo"Unfortunatly we couladn't update the record!"; 
}


}

?>
</body>
</html>