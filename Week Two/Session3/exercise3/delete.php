<!DOCTYPE html>
<html>
<head>
	<title>Delete</title>
</head>
<body>
	<?php
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "phpmyadmin";
		$connection = new mysqli($servername, $username, $password, $dbname);
		$sqldelete = "DELETE FROM customers WHERE customerID = ".$_GET['id'];
		?>
		<form action="delete.php?id=<?php echo $_GET['id']; ?>&name=<?php echo $_GET['name']; ?>" method='post'>
			<lable> Please tick this box if you 100% want to delete the infromation <?php echo $_GET['name']; ?> from your infromation</lable><br>
			<input type="checkbox" name="confirm">
			<input type="submit" name="submit">	
		</form>


		<?php



			if ($_SERVER["REQUEST_METHOD"] == "POST"){
				if ($_POST['confirm'] == "on"){

					$sqldelete = "DELETE FROM customers WHERE customerID = ".$_GET['id'];
					if ($connection->query($sqldelete) === TRUE){
						echo "New record deleted successfully, <a href='read.php'>click here</a> to leave this page";
					}
					else{
						echo "Delete Failed, please try again later";
					}
				}
				else{
					echo "To delete this infromation, please ensure you select the box above.";
				}





			}





	?>
</body>
</html>